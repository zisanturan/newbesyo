import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile {
  String fullName;
  String email;
  String phoneNumber;
  String city;
  String district;

  UserProfile({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.city,
    required this.district,
  });

  int get postCount => 0;

  int get followingCount => 0;

  int get followerCount => 0;

  static Future<UserProfile> fromFirestore() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (doc.exists) {
        final data = doc.data()!;
        return UserProfile(
          fullName: data['fullName'] ?? 'Ad Soyad',
          email: user.email ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          city: data['city'] ?? '',
          district: data['district'] ?? '',
        );
      }
    }
    return UserProfile(
      fullName: 'Ad Soyad',
      email: user?.email ?? '',
      phoneNumber: '',
      city: '',
      district: '',
    );
  }

  Future<void> saveToFirestore() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'fullName': fullName,
        'phoneNumber': phoneNumber,
        'city': city,
        'district': district,
      }, SetOptions(merge: true));
    }
  }

  // Sosyal sayfada gösterilecek bilgiler
  Map<String, String> getPublicInfo() {
    return {
      'fullName': fullName,
      'city': city,
    };
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required UserProfile userProfile});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return const Center(child: Text('Kullanıcı bulunamadı'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Bir hata oluştu'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('Kullanıcı bilgileri bulunamadı'));
          }

          final userData = snapshot.data!.data() as Map<String, dynamic>;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 0, 64, 255),
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 24),
                _buildInfoCard(
                  title: 'Kişisel Bilgiler',
                  children: [
                    _buildInfoRow('Ad', userData['name'] ?? ''),
                    _buildInfoRow('Soyad', userData['surname'] ?? ''),
                    _buildInfoRow('Telefon', userData['phone'] ?? ''),
                    _buildInfoRow('E-posta', userData['email'] ?? ''),
                    _buildInfoRow('Doğum Tarihi', userData['birthDate'] ?? ''),
                    _buildInfoRow('Şehir', userData['city'] ?? ''),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required List<Widget> children,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 64, 255),
              ),
            ),
            const Divider(),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
