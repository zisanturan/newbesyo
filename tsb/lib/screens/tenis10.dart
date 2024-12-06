import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenisU10ProgramPage extends StatelessWidget {
  const TenisU10ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U10 - U12 Tenis Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 51, 255), // Mavi renk
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Ocak
            _buildProgramCard(
              ay: 'Ocak',
              konular:
                  '• Temel vuruş teknikleri geliştirme (forehand, backhand).\n• Temel servis atışlarını öğrenme.\n• Koordinasyon ve hız çalışmaları.\n• Eğlenceli raket oyunları.',
            ),
            const SizedBox(height: 16),

            // Şubat
            _buildProgramCard(
              ay: 'Şubat',
              konular:
                  '• Topları hedefe atma ve yönlendirme.\n• Servis atışlarında doğruluk geliştirme.\n• Takım oyunlarıyla işbirliği yetenekleri.\n• Yavaş toplarla vuruş pratiği.',
            ),
            const SizedBox(height: 16),

            // Mart
            _buildProgramCard(
              ay: 'Mart',
              konular:
                  '• Topa vururken denge ve pozisyon alma.\n• Çiftler oyunlarına başlama.\n• Hedefe top atma ve raketle topu yönlendirme çalışmaları.\n• Vücut koordinasyonu ve çeviklik oyunları.',
            ),
            const SizedBox(height: 16),

            // Nisan
            _buildProgramCard(
              ay: 'Nisan',
              konular:
                  '• Hızlı reaksiyon zamanı geliştirme.\n• Servis atışlarını doğru şekilde yapma.\n• Kısa mesafede vuruş yapma teknikleri.\n• Temel strateji çalışmalarına başlama.',
            ),
            const SizedBox(height: 16),

            // Mayıs
            _buildProgramCard(
              ay: 'Mayıs',
              konular:
                  '• Rakiplerin oyununu gözlemleyerek tepki verme.\n• Topa vuruş hızını artırma.\n• Çiftler oyununda takım uyumu.\n• Hareketlilik ve hız geliştirme.',
            ),
            const SizedBox(height: 16),

            // Haziran
            _buildProgramCard(
              ay: 'Haziran',
              konular:
                  '• Daha hızlı toplarla vuruş yapma.\n• Forehand ve backhand vuruşlarının güçlendirilmesi.\n• Kısa mesafelerde net vuruşlar.\n• Temel oyun stratejileri ve karar alma.',
            ),
            const SizedBox(height: 16),

            // Temmuz
            _buildProgramCard(
              ay: 'Temmuz',
              konular:
                  '• Vücut pozisyonunu doğru ayarlama.\n• Servis atışlarında hız ve doğruluk.\n• Çiftler oyununda işbirliği.\n• Oyun boyunca strateji geliştirme.',
            ),
            const SizedBox(height: 16),

            // Ağustos
            _buildProgramCard(
              ay: 'Ağustos',
              konular:
                  '• Servis ve vuruş hızlarını artırma.\n• Çiftler oyununda stratejik hareketler.\n• Rakip analizleri ve oyun taktikleri.\n• Eğlenceli mini maçlar.',
            ),
            const SizedBox(height: 16),

            // Eylül
            _buildProgramCard(
              ay: 'Eylül',
              konular:
                  '• Topa vuruş hızını artırma.\n• Oyun stratejilerini geliştirme.\n• Kısa mesafelerde raketle top yönlendirme.\n• Çeviklik geliştirme.',
            ),
            const SizedBox(height: 16),

            // Ekim
            _buildProgramCard(
              ay: 'Ekim',
              konular:
                  '• Hedefe yönelik vuruşlar.\n• Çiftler oyununda strateji ve takım çalışması.\n• Rakipten top geri alırken hız artırma.\n• Oyun boyunca strateji belirleme.',
            ),
            const SizedBox(height: 16),

            // Kasım
            _buildProgramCard(
              ay: 'Kasım',
              konular:
                  '• Çiftler oyununda iletişim geliştirme.\n• Topları hızla yönlendirme.\n• Fiziksel kondisyon ve dayanıklılık çalışmaları.\n• Topa daha doğru vuruşlar yapma.',
            ),
            const SizedBox(height: 16),

            // Aralık
            _buildProgramCard(
              ay: 'Aralık',
              konular:
                  '• Yıl sonu değerlendirmesi ve gelişim.\n• Servis ve vuruş tekniklerinin gözden geçirilmesi.\n• Strateji ve takım oyunlarında ilerleme.\n• Eğlenceli maçlar ve yarışmalar.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramCard({required String ay, required String konular}) {
    return Card(
      color: const Color.fromARGB(255, 0, 8, 255), // Mavi renk
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
