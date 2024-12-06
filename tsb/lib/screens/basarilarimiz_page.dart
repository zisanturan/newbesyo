import 'package:flutter/material.dart';

class BasarilarimizPage extends StatelessWidget {
  final List<Map<String, String>> basarilar = [
    {'baslik': 'TSB Şampiyonluğu', 'detay': 'turnuva birinciliği.'},
    {
      'baslik': 'Spor Bilimleri Başarı Ödülü',
      'detay': 'Yılın  başarılı spor kurumu ödülü.'
    },
    {
      'baslik': 'Genç Yetenekler Programı',
      'detay': 'Genç sporculara yönelik başarı programı.'
    },
    // Diğer başarılar burada eklenebilir
  ];

  BasarilarimizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Başarılarımız"),
        backgroundColor: const Color.fromARGB(255, 0, 157, 255),
      ),
      body: ListView.builder(
        itemCount: basarilar.length,
        itemBuilder: (context, index) {
          final basari = basarilar[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                basari['baslik']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(basari['detay']!),
              leading: const Icon(Icons.emoji_events, color: Color(0xFF00FF9C)),
            ),
          );
        },
      ),
    );
  }
}
