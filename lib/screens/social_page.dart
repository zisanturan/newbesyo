import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SocialPage extends StatefulWidget {
  final UserProfile userProfile;

  const SocialPage({
    super.key,
    required this.userProfile,
  });

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sosyal"),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _getPostsStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Bir hata oluştu: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('Henüz gönderi yok'));
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final doc = snapshot.data!.docs[index];
              final data = doc.data() as Map<String, dynamic>;
              return PostCard(
                postId: doc.id,
                post: Post.fromFirestore(data),
                currentUser: widget.userProfile,
                onDelete: data['userId'] == _auth.currentUser?.uid
                    ? () => _deletePost(doc.id)
                    : null,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showNewPostDialog,
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
        child: const Icon(Icons.add),
      ),
    );
  }

  Stream<QuerySnapshot> _getPostsStream() {
    return _firestore
        .collection('posts')
        .orderBy('timestamp', descending: true)
        .snapshots();
  }

  Future<void> _deletePost(String postId) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Lütfen önce giriş yapın')),
        );
        return;
      }

      await _firestore.collection('posts').doc(postId).delete();
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Gönderi silindi'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Gönderi silinirken hata oluştu: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _showNewPostDialog() {
    final textController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Yeni Gönderi"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Gönderinizi yazın...",
            border: OutlineInputBorder(),
          ),
          maxLines: 5,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("İptal"),
          ),
          ElevatedButton(
            onPressed: () async {
              if (textController.text.isNotEmpty) {
                await _createPost(textController.text);
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 64, 255),
            ),
            child: const Text("Paylaş"),
          ),
        ],
      ),
    );
  }

  Future<void> _createPost(String content) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Lütfen önce giriş yapın')),
        );
        return;
      }

      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final userData = userDoc.data() as Map<String, dynamic>;

      await _firestore.collection('posts').add({
        'userId': user.uid,
        'name': userData['name'] ?? '',
        'surname': userData['surname'] ?? '',
        'content': content,
        'city': userData['city'] ?? '',
        'timestamp': FieldValue.serverTimestamp(),
        'likes': [],
        'comments': [],
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Gönderi paylaşılırken hata oluştu: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}

class Post {
  final String userId;
  final String name;
  final String surname;
  final String content;
  final String city;
  final DateTime timestamp;
  final List<String> likes;
  final List<Map<String, dynamic>> comments;

  Post({
    required this.userId,
    required this.name,
    required this.surname,
    required this.content,
    required this.city,
    required this.timestamp,
    required this.likes,
    required this.comments,
  });

  String get fullName {
    final firstName = name.isNotEmpty ? name : 'İsimsiz';
    final lastName = surname.isNotEmpty ? surname : 'Kullanıcı';
    return '$firstName $lastName';
  }

  factory Post.fromFirestore(Map<String, dynamic> data) {
    return Post(
      userId: data['userId'] ?? '',
      name: (data['name'] ?? '').toString(),
      surname: (data['surname'] ?? '').toString(),
      content: data['content'] ?? '',
      city: data['city'] ?? '',
      timestamp: (data['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
      likes: List<String>.from(data['likes'] ?? []),
      comments: List<Map<String, dynamic>>.from(data['comments'] ?? []),
    );
  }
}

class PostCard extends StatefulWidget {
  final String postId;
  final Post post;
  final UserProfile currentUser;
  final VoidCallback? onDelete;

  const PostCard({
    super.key,
    required this.postId,
    required this.post,
    required this.currentUser,
    this.onDelete,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 0, 64, 255),
                  child: Text(
                    (widget.post.name.isNotEmpty ? widget.post.name[0] : '?')
                        .toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.fullName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      if (widget.post.city.isNotEmpty)
                        Text(
                          widget.post.city,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                    ],
                  ),
                ),
                Text(
                  _formatTimestamp(widget.post.timestamp),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
                if (widget.onDelete != null) ...[
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Gönderiyi Sil'),
                          content: const Text(
                              'Bu gönderiyi silmek istediğinizden emin misiniz?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("İptal"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                widget.onDelete!();
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: const Text("Sil"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),
            Text(
              widget.post.content,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.post.comments.map((comment) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    '${comment['userName']}: ${comment['content']}',
                    style: const TextStyle(fontSize: 14),
                  ),
                );
              }).toList(),
            ),
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                hintText: 'Yorum yap...',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  _addComment(widget.postId, value);
                  _commentController.clear();
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_commentController.text.isNotEmpty) {
                  _addComment(widget.postId, _commentController.text);
                  _commentController.clear();
                }
              },
              child: const Text("Gönder"),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                  onPressed: () {
                    _toggleLike(widget.postId);
                  },
                ),
                const SizedBox(width: 8),
                Text('${widget.post.likes.length} Beğeni'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addComment(String postId, String content) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) return;

      final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      final userData = userDoc.data() as Map<String, dynamic>;

      final commentId = DateTime.now().millisecondsSinceEpoch.toString();
      final comment = {
        'commentId': commentId,
        'userId': user.uid,
        'userName': '${userData['name']} ${userData['surname']}',
        'content': content,
        'timestamp': FieldValue.serverTimestamp(),
      };

      await FirebaseFirestore.instance.collection('posts').doc(postId).update({
        'comments': FieldValue.arrayUnion([comment]),
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Yorum eklenirken hata: $e')),
      );
    }
  }

  Future<void> _toggleLike(String postId) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) return;

      final postDoc = await FirebaseFirestore.instance
          .collection('posts')
          .doc(postId)
          .get();
      final postData = postDoc.data() as Map<String, dynamic>;

      List<String> likes = List<String>.from(postData['likes'] ?? []);
      if (likes.contains(user.uid)) {
        likes.remove(user.uid);
      } else {
        likes.add(user.uid);
      }

      await FirebaseFirestore.instance.collection('posts').doc(postId).update({
        'likes': likes,
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Beğeni eklenirken hata: $e')),
      );
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final timeAgo = timestamp.difference(DateTime.now()).inMinutes;
    if (timeAgo < 60) {
      return '$timeAgo dakika önce';
    }
    if (timeAgo < 1440) {
      return '${(timeAgo / 60).floor()} saat önce';
    }
    return '${(timeAgo / 1440).floor()} gün önce';
  }
}

class UserProfile {
  // Example class for user profile
  final String id;
  final String name;
  final String surname;
  final String city;

  UserProfile({
    required this.id,
    required this.name,
    required this.surname,
    required this.city,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String district,
  });
}
