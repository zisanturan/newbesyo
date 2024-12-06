import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenisU8ProgramPage extends StatelessWidget {
  const TenisU8ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U8 - 8 Yaş Altı Tenis Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 0, 255), // Mor renk
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Ocak
            _buildProgramCard(
              ay: 'Ocak',
              konular:
                  '• Temel raket tutuşu öğrenme.\n• Topları zıplatma ve top kontrolü.\n• Hareket kabiliyeti geliştirme.\n• Eğlenceli oyunlar ve aktiviteler.',
            ),
            const SizedBox(height: 16),

            // Şubat
            _buildProgramCard(
              ay: 'Şubat',
              konular:
                  '• Yavaş hareket eden topları karşılamak.\n• Temel servis atışları.\n• Yön değiştirme ve koşma oyunları.\n• Takım oyunlarıyla işbirliği.',
            ),
            const SizedBox(height: 16),

            // Mart
            _buildProgramCard(
              ay: 'Mart',
              konular:
                  '• Forehand ve backhand vuruşları geliştirme.\n• Topları hedefe doğru atma.\n• Hızlı tepki ve koordinasyon çalışmaları.\n• Topu doğru şekilde takip etme.',
            ),
            const SizedBox(height: 16),

            // Nisan
            _buildProgramCard(
              ay: 'Nisan',
              konular:
                  '• Kısa mesafelerde top kontrolü.\n• Temel pozisyon alma ve hareketlilik çalışmaları.\n• Eğlenceli mini maçlar ve aktivite zamanları.\n• Raketle top kontrol becerisi.',
            ),
            const SizedBox(height: 16),

            // Mayıs
            _buildProgramCard(
              ay: 'Mayıs',
              konular:
                  '• Raketle temel vuruşları yapma.\n• Topları yönlendirme ve hareketli hedeflere vuruş yapma.\n• Çeviklik ve hız geliştirme çalışmaları.\n• Kısa mesafeli oyunlar.',
            ),
            const SizedBox(height: 16),

            // Haziran
            _buildProgramCard(
              ay: 'Haziran',
              konular:
                  '• Çiftler oyunları ve grup çalışmaları.\n• Raket ile koordinasyon oyunları.\n• Hedefe top atma becerisi.\n• Fiziksel dayanıklılık artırıcı oyunlar.',
            ),
            const SizedBox(height: 16),

            // Temmuz
            _buildProgramCard(
              ay: 'Temmuz',
              konular:
                  '• Forehand ve backhand vuruşlarını pekiştirme.\n• Topları zıplatarak yönlendirme.\n• Hızlı reaksiyon süreleri ve çevik hareketler.\n• Rakiplerin hareketlerini gözlemleme.',
            ),
            const SizedBox(height: 16),

            // Ağustos
            _buildProgramCard(
              ay: 'Ağustos',
              konular:
                  '• Topu raketle doğru şekilde vurma.\n• Servis atışı tekniklerini geliştirme.\n• Zıplama ve hızlanma çalışmaları.\n• Çiftli oyunlar ile takım ruhunu geliştirme.',
            ),
            const SizedBox(height: 16),

            // Eylül
            _buildProgramCard(
              ay: 'Eylül',
              konular:
                  '• Top kontrolünde hız ve hassasiyet geliştirme.\n• Rakibin oyununa odaklanma ve strateji oluşturma.\n• Hedef belirleme ve oyun içi karar alma.\n• Eğlenceli yarışmalar ve mini maçlar.',
            ),
            const SizedBox(height: 16),

            // Ekim
            _buildProgramCard(
              ay: 'Ekim',
              konular:
                  '• Topun hızını ve yönünü kontrol etme.\n• Fiziksel kondisyon artırıcı çalışmalara devam.\n• Kısa mesafeli oyunlar ile hız geliştirme.\n• Eğlenceli takım oyunları.',
            ),
            const SizedBox(height: 16),

            // Kasım
            _buildProgramCard(
              ay: 'Kasım',
              konular:
                  '• Koordinasyon ve denge geliştirme.\n• Topa vurma hızını artırma.\n• Fiziksel dayanıklılık ve esneklik çalışmaları.\n• Oyun kurallarına aşinalık kazandırma.',
            ),
            const SizedBox(height: 16),

            // Aralık
            _buildProgramCard(
              ay: 'Aralık',
              konular:
                  '• Yıl sonu değerlendirme ve ilerleme.\n• Vuruş tekniklerini gözden geçirme.\n• Takım oyunlarında işbirliği.\n• Yıl boyunca öğrenilen becerilerin pekiştirilmesi.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramCard({required String ay, required String konular}) {
    return Card(
      color: const Color.fromARGB(255, 25, 0, 255), // Mor renk
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ay,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              konular,
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
