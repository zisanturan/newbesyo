import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AskeriOkullarPage extends StatelessWidget {
  const AskeriOkullarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Askeri Okullar'),
        backgroundColor: const Color(0xFF0040FF), // Başlık rengi
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Başlık
            Text(
              'Askeri Okullar Nedir?',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Askeri okullar, bir ülkenin askeri personel ihtiyacını karşılamak amacıyla eğitim veren disiplinli kurumlardır. '
              'Bu okullar, öğrencilerin fiziksel dayanıklılıklarını artırmak, liderlik becerilerini geliştirmek ve askeri alanda gerekli olan teknik bilgileri kazandırmak için özel olarak tasarlanmıştır.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Sınav Süreci
            Text(
              'Askeri Okulların Giriş Sınavı',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Askeri okullara giriş için adayların yazılı sınav, sağlık kontrolü, fiziksel yeterlilik testleri ve mülakat aşamalarını başarıyla geçmeleri gerekmektedir. '
              'Bu süreçte genel yetenek, Türkçe, matematik ve genel kültür alanlarında yapılan yazılı sınavlar büyük önem taşır.',
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
              'Askeri okulların fiziksel yeterlilik testlerinde adayların dayanıklılık, hız, çeviklik ve koordinasyon gibi özellikleri değerlendirilir. '
              'Parkur sınavı, koşu, şınav ve mekik gibi fiziksel aktiviteler bu aşamanın temel bileşenlerindendir.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Sözlü Mülakat
            Text(
              'Sözlü Mülakat Süreci',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sözlü mülakat aşamasında adayların kendini ifade etme yeteneği, problem çözme becerisi ve liderlik potansiyeli değerlendirilmektedir. '
              'Adayların bu aşamada başarılı olmaları için genel kültür bilgilerine hakim olmaları ve özgüvenlerini sergilemeleri gerekmektedir.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Kazanma Stratejileri
            Text(
              'Askeri Okul Sınavını Kazanmak İçin Stratejiler',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '1. Disiplinli Çalışma: Günlük bir çalışma planı hazırlayın ve düzenli bir şekilde uygulayın.\n\n'
              '2. Fiziksel Hazırlık: Parkur sınavı ve fiziksel testler için düzenli spor yapın.\n\n'
              '3. Genel Kültür Bilgisi: Güncel olaylar, tarih ve coğrafya konularında bilgi sahibi olun.\n\n'
              '4. Deneme Sınavları: Sık sık deneme sınavları çözerek hızınızı ve doğruluğunuzu artırın.\n\n'
              '5. Profesyonel Destek: İhtiyaç duyarsanız özel kurslara katılarak eksiklerinizi giderin.',
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
