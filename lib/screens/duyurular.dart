import 'package:flutter/material.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  // Dummy data for announcements
  final List<Map<String, String>> announcements = [
    {
      'title': 'Yeni Güncelleme Yayında!',
      'date': '01 Aralık 2024',
      'content': 'Uygulamamıza yeni özellikler eklendi. Hemen deneyin!'
    },
    {
      'title': 'Yılbaşı Etkinliği',
      'date': '25 Aralık 2024',
      'content': 'Yılbaşı için özel etkinlikler düzenliyoruz. Kaçırmayın!'
    },
    {
      'title': 'Bakım Çalışması',
      'date': '10 Aralık 2024',
      'content': '10 Aralık gecesi sistem bakım çalışması yapılacaktır.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Duyurular',
          style: TextStyle(
            color: Colors.white, // Metin rengini beyaz olarak ayarlıyoruz
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          final announcement = announcements[index];
          return ListTile(
            title: Text(announcement['title']!),
            subtitle: Text(announcement['date']!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to the announcement detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnnouncementDetailPage(
                    title: announcement['title']!,
                    date: announcement['date']!,
                    content: announcement['content']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AnnouncementDetailPage extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const AnnouncementDetailPage({
    super.key,
    required this.title,
    required this.date,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Duyuru Detayı',
          style: TextStyle(
            color: Colors.white, // Metin rengini beyaz olarak ayarlıyoruz
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              date,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            Text(
              content,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
