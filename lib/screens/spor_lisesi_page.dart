import 'package:flutter/material.dart';

class SporLisesiPage extends StatelessWidget {
  const SporLisesiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spor Lisesi'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Başlık rengi
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spor Lisesi Nedir?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Spor liseleri, spor eğitimi alanında genç yetenekleri desteklemek ve geliştirmek amacıyla kurulmuş eğitim kurumlarıdır. '
              'Bu liseler, öğrencilere spor branşlarında hem teorik hem de pratik eğitim sunar.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Spor Lisesi Kurslarımız Section
            Text(
              'Spor Lisesi Kurslarımız',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'TSB olarak, spor lisesi sınavlarına hazırlık kurslarımız ile adayların başarılı olmasını sağlıyoruz. '
              'Bu kurslarda, spor liselerine giriş için gereken fiziksel ve teorik bilgiler verilmektedir.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Hazırlık Programı Section
            Text(
              'Hazırlık Programımız',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Spor liselerine giriş sürecinde adayların fiziksel ve akademik anlamda yeterli olması beklenir. '
              'Hazırlık programlarımız, adayların sınav ve mülakat süreçlerine en iyi şekilde hazırlanmalarını sağlar.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Liseler Hakkında Bilgi Section
            Text(
              'Liseler Hakkında Bilgi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Türkiye\'de spor liseleri, öğrencilere akademik eğitimin yanı sıra spor alanında da yoğun bir eğitim sunar. '
              'Spor liseleri, öğrencilerin spor kariyerlerine yönelik sağlam bir temel oluşturur.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
