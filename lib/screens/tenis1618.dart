import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenisU18ProgramPage extends StatelessWidget {
  const TenisU18ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U16 - 18 Yaş Altı Tenis Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Mavi tonları
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Ocak
            _buildProgramCard(
              ay: 'Ocak',
              konular:
                  '• İleri seviyede servis ve vuruş teknikleri.\n• Oyun stratejileri üzerine yoğunlaşma.\n• Çiftler oyununda takım koordinasyonu.\n• Rakip analizi ve oyun taktikleri.',
            ),
            const SizedBox(height: 16),

            // Şubat
            _buildProgramCard(
              ay: 'Şubat',
              konular:
                  '• Oyun sırasında hız ve çeviklik geliştirme.\n• Zorlu servis ve vuruş hızları.\n• Fiziksel dayanıklılığı artırma.\n• Çiftler oyununda strateji belirleme.',
            ),
            const SizedBox(height: 16),

            // Mart
            _buildProgramCard(
              ay: 'Mart',
              konular:
                  '• Hızlı reaksiyon süreleri ve oyun stratejileri.\n• Topa daha güçlü vuruşlar yapma.\n• Zorluk seviyesini artıran egzersizler.\n• Çiftler oyununda takım uyumu.',
            ),
            const SizedBox(height: 16),

            // Nisan
            _buildProgramCard(
              ay: 'Nisan',
              konular:
                  '• Çiftler oyununda strateji geliştirme.\n• Oyun sırasında hızlı kararlar alarak pozisyon belirleme.\n• Fiziksel kuvvet ve dayanıklılık artırma.\n• Rakip analizi yapma.',
            ),
            const SizedBox(height: 16),

            // Mayıs
            _buildProgramCard(
              ay: 'Mayıs',
              konular:
                  '• Yüksek hızda vuruş ve servis teknikleri.\n• Oyun sırasında strateji geliştirme.\n• Çiftler oyununda takım uyumu ve iletişimi.\n• Fiziksel hız ve çeviklik çalışmaları.',
            ),
            const SizedBox(height: 16),

            // Haziran
            _buildProgramCard(
              ay: 'Haziran',
              konular:
                  '• Vuruş ve servis hızını artırma.\n• Zorluk seviyesini artıran egzersizler.\n• Fiziksel dayanıklılığı geliştirme.\n• Rakip analizi ve oyun stratejileri.',
            ),
            const SizedBox(height: 16),

            // Temmuz
            _buildProgramCard(
              ay: 'Temmuz',
              konular:
                  '• Stratejik oyun ve takım uyumu üzerine çalışmak.\n• Top kontrolü ve vuruş hızları.\n• Çiftler oyununda takım çalışması.\n• Fiziksel dayanıklılık ve hız artırma.',
            ),
            const SizedBox(height: 16),

            // Ağustos
            _buildProgramCard(
              ay: 'Ağustos',
              konular:
                  '• Hedefe doğru vuruş yapma.\n• Yüksek hızda servis atışları.\n• Oyun sırasındaki karar verme becerisi.\n• Fiziksel kuvvet geliştirme.',
            ),
            const SizedBox(height: 16),

            // Eylül
            _buildProgramCard(
              ay: 'Eylül',
              konular:
                  '• Çiftler oyununda takım stratejileri.\n• Oyun sırasında hız ve çeviklik geliştirme.\n• Rakip analizine dayalı strateji geliştirme.\n• Zorlu vuruş tekniklerini geliştirme.',
            ),
            const SizedBox(height: 16),

            // Ekim
            _buildProgramCard(
              ay: 'Ekim',
              konular:
                  '• Yüksek hızda vuruşlar ve servis teknikleri.\n• Stratejik oyun ve takım uyumu geliştirme.\n• Fiziksel dayanıklılık ve hız üzerine çalışmak.\n• Rakip analizi ve çözüm önerileri.',
            ),
            const SizedBox(height: 16),

            // Kasım
            _buildProgramCard(
              ay: 'Kasım',
              konular:
                  '• Hızlı top kontrolü ve reaksiyon süreleri.\n• Fiziksel kuvvet ve dayanıklılık artırma.\n• Çiftler oyununda takım stratejileri.\n• Yüksek hızda servis teknikleri.',
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
      color: const Color.fromARGB(255, 1, 52, 255), // Mavi tonları
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
