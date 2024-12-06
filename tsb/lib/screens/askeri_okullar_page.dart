import 'package:flutter/material.dart';

class AskeriOkullarPage extends StatelessWidget {
  const AskeriOkullarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Askeri Okullar'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Başlık rengi
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Askeri Okullar Nedir?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Askeri okullar, askeri personel yetiştirmek amacıyla eğitim veren kurumlardır. '
              'Bu okullar, disiplinli bir eğitim ile öğrencileri fiziksel, zihinsel ve sosyal anlamda '
              'geliştirmeyi amaçlar.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // PMYO-POMEM Section
            Text(
              'PMYO ve POMEM Okulları',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'PMYO (Polis Meslek Yüksekokulu) ve POMEM (Polis Meslek Eğitim Merkezi), '
              'polislik mesleğine aday öğrencilere eğitim veren kurumlardır. Bu okullarda verilen '
              'eğitimler sayesinde öğrenciler, polislik mesleği için gerekli bilgi ve becerilere sahip olur.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Askeri Okul Kurslarımız Section
            Text(
              'Askeri Okul Kurslarımız',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'TSB olarak askeri okul sınavlarına hazırlık için özel kurslar sunmaktayız. '
              'Bu kurslarımız, sınavlarda başarılı olmanız için gerekli olan tüm bilgi ve becerileri kazandırmayı amaçlar.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Sağlık Parkuru Section
            Text(
              'Sağlık Parkuru',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Sağlık parkuru, askeri okul sınavlarında adayların fiziksel yeterliliklerini test etmek amacıyla yapılır. '
              'TSB olarak, bu parkura yönelik özel hazırlık programlarımız ile adaylarımızın parkur sınavını başarıyla geçmelerini sağlamaktayız.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),

            // Sözlü Mülakat Bilgisi Section
            Text(
              'Sözlü Mülakat Bilgisi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Askeri okullara giriş sürecinde sözlü mülakatlar, adayların kendilerini ifade edebilme yeteneğini ve genel kültür bilgilerini değerlendirmek amacıyla yapılır. '
              'Mülakat sürecinde başarı sağlamak için gereken stratejiler hakkında eğitimler sunmaktayız.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
