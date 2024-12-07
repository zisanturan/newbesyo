import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenisU14ProgramPage extends StatelessWidget {
  const TenisU14ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U12 - 14 Yaş Altı Tenis Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 17, 255), // Mavi tonları
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Ocak
            _buildProgramCard(
              ay: 'Ocak',
              konular:
                  '• Teknik ve strateji üzerine yoğunlaşma.\n• Servis ve geri vuruş hızlarını artırma.\n• Rakip analizleri ve oyun taktikleri.\n• Hedefe yönelik vuruş teknikleri.',
            ),
            const SizedBox(height: 16),

            // Şubat
            _buildProgramCard(
              ay: 'Şubat',
              konular:
                  '• Oyun stratejileri üzerinde yoğunlaşma.\n• Fiziksel dayanıklılığı artırma.\n• Top kontrolü ve hız çalışmaları.\n• Çiftler oyununda strateji geliştirme.',
            ),
            const SizedBox(height: 16),

            // Mart
            _buildProgramCard(
              ay: 'Mart',
              konular:
                  '• Topa doğru vuruş yapma.\n• Çiftler oyununda uyum sağlama.\n• Rakip analizine göre strateji geliştirme.\n• Kısa mesafelerde hız ve çeviklik geliştirme.',
            ),
            const SizedBox(height: 16),

            // Nisan
            _buildProgramCard(
              ay: 'Nisan',
              konular:
                  '• Yüksek hızda toplara tepki verme.\n• Çiftler oyununda pozisyon almak.\n• Vücut koordinasyonu ve denge çalışmaları.\n• Oyun sırasındaki strateji geliştirme.',
            ),
            const SizedBox(height: 16),

            // Mayıs
            _buildProgramCard(
              ay: 'Mayıs',
              konular:
                  '• Daha hızlı vuruşlar yapma.\n• Servis ve top kontrolü.\n• Stratejik karar alma ve anlık reaksiyonlar.\n• Fiziksel kondisyon artırma.',
            ),
            const SizedBox(height: 16),

            // Haziran
            _buildProgramCard(
              ay: 'Haziran',
              konular:
                  '• Oyun sırasındaki strateji ve taktikler.\n• Daha hızlı ve hassas vuruşlar yapma.\n• Rakipleri analiz etme ve strateji geliştirme.\n• Çiftler oyununda takım ruhu.',
            ),
            const SizedBox(height: 16),

            // Temmuz
            _buildProgramCard(
              ay: 'Temmuz',
              konular:
                  '• Rakipleri analiz etme.\n• Oyun boyunca strateji geliştirme.\n• Topa daha fazla kontrol sağlama.\n• Fiziksel dayanıklılığı artırma.',
            ),
            const SizedBox(height: 16),

            // Ağustos
            _buildProgramCard(
              ay: 'Ağustos',
              konular:
                  '• Yüksek hızda vuruşlar.\n• Fiziksel hız ve çeviklik geliştirme.\n• Oyun stratejileri üzerine yoğunlaşma.\n• Oyun sırasındaki karar verme.',
            ),
            const SizedBox(height: 16),

            // Eylül
            _buildProgramCard(
              ay: 'Eylül',
              konular:
                  '• Hedefe doğru vuruş yapma.\n• Yüksek hızda servis atışları.\n• Oyun sırasında strateji belirleme.\n• Rakip oyunlarını çözme.',
            ),
            const SizedBox(height: 16),

            // Ekim
            _buildProgramCard(
              ay: 'Ekim',
              konular:
                  '• Stratejik oyun ve takım uyumu.\n• Hızlı reaksiyonlar geliştirme.\n• Fiziksel dayanıklılığı artırma.\n• Top kontrolü ve vuruş teknikleri.',
            ),
            const SizedBox(height: 16),

            // Kasım
            _buildProgramCard(
              ay: 'Kasım',
              konular:
                  '• Oyun sırasında hızlı kararlar alma.\n• Hızlı top kontrolü.\n• Çiftler oyununda takım stratejileri.\n• Dönüş ve koordinasyon çalışmaları.',
            ),
            const SizedBox(height: 16),

            // Aralık
            _buildProgramCard(
              ay: 'Aralık',
              konular:
                  '• Yıl sonu değerlendirme ve gelişim.\n• Vuruş tekniklerini gözden geçirme.\n• Strateji ve takım oyununda ilerleme.\n• Eğlenceli maçlar ve yarışmalar.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramCard({required String ay, required String konular}) {
    return Card(
      color: const Color.fromARGB(255, 0, 60, 255), // Mavi tonları
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
