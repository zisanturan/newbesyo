import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PMYOPOMEMPage extends StatelessWidget {
  const PMYOPOMEMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PMYO-POMEM'),
        backgroundColor: const Color.fromARGB(255, 8, 0, 255), // Başlık rengi
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Başlık
            Text(
              'PMYO ve POMEM Nedir?',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'PMYO (Polis Meslek Yüksek Okulu) ve POMEM (Polis Meslek Eğitim Merkezi), Türkiye\'de polis yetiştirmek amacıyla eğitim veren kurumlar arasında yer alır. '
              'PMYO, lise mezunları için iki yıllık bir ön lisans programı sunarken, POMEM genellikle üniversite mezunlarını hedef alan kısa süreli bir eğitim programıdır.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Giriş Koşulları
            Text(
              'PMYO ve POMEM Giriş Koşulları',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'PMYO ve POMEM sınavlarına katılabilmek için adayların belirli şartları sağlamaları gerekmektedir. Bu şartlar arasında:\n\n'
              '- T.C. vatandaşı olmak\n'
              '- Belirli yaş aralığında bulunmak\n'
              '- Lise veya üniversite mezunu olmak\n'
              '- Fiziksel yeterlilik ve sağlık şartlarını karşılamak\n'
              '- Adli sicil kaydının temiz olması\n'
              'yer almaktadır.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Fiziksel Yeterlilik
            Text(
              'Fiziksel Yeterlilik Testleri',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'PMYO ve POMEM sınavlarının önemli aşamalarından biri fiziksel yeterlilik testidir. '
              'Bu testlerde adayların dayanıklılığı, çevikliği ve fiziksel uygunluğu değerlendirilir. Parkur sınavı, kısa mesafe koşusu, şınav ve mekik gibi fiziksel aktiviteler bu aşamanın temel bileşenleridir.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Yazılı Sınav
            Text(
              'Yazılı Sınav ve Mülakat Süreci',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Yazılı sınavda adaylar genellikle Türkçe, matematik, genel kültür ve vatandaşlık bilgisi gibi alanlardan sorumlu tutulur. '
              'Mülakat aşamasında ise adayların iletişim becerileri, problem çözme yetenekleri ve mesleğe uygunlukları değerlendirilir.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Hazırlık Stratejileri
            Text(
              'PMYO-POMEM Sınavlarına Hazırlık Stratejileri',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '1. Günlük Çalışma Planı: Her gün düzenli olarak belirli sürelerde sınava yönelik çalışın.\n\n'
              '2. Fiziksel Egzersiz: Fiziksel yeterlilik testleri için düzenli spor yaparak dayanıklılığınızı artırın.\n\n'
              '3. Deneme Sınavları: Yazılı sınav için sık sık deneme sınavı çözerek hızınızı artırın.\n\n'
              '4. Rehberlik: Alanında uzman kişilerden destek alarak eksiklerinizi tamamlayın.\n\n'
              '5. Motivasyon: Sınav sürecinde kendinize olan güveninizi yüksek tutun ve hedefinize odaklanın.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
