import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenisU35Page extends StatelessWidget {
  const TenisU35Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tenis U35 Antrenman Programı',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 49, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Ocak
            _buildProgramCard(
              ay: 'Ocak',
              konular:
                  '• Fiziksel dayanıklılığı artırma.\n• Temel top kontrolü ve servis teknikleri.\n• Oyun temposunu artırma.\n• Çiftler oyununda strateji geliştirme.',
            ),
            const SizedBox(height: 16),

            // Şubat
            _buildProgramCard(
              ay: 'Şubat',
              konular:
                  '• Stratejik oyun becerilerini geliştirme.\n• Yüksek hızda vuruş ve servis teknikleri.\n• Savunma ve hücum arasında denge kurma.\n• Çiftler oyununda takım uyumu.',
            ),
            const SizedBox(height: 16),

            // Mart
            _buildProgramCard(
              ay: 'Mart',
              konular:
                  '• Top kontrolü ve reaksiyon sürelerini geliştirme.\n• Fiziksel hız ve çeviklik çalışmaları.\n• Oyun sırasında strateji geliştirme.\n• Rakip analizine dayalı strateji.',
            ),
            const SizedBox(height: 16),

            // Nisan
            _buildProgramCard(
              ay: 'Nisan',
              konular:
                  '• Yüksek hızda servis teknikleri.\n• Çiftler oyununda iletişim ve takım uyumu.\n• Stratejik karar verme.\n• Fiziksel dayanıklılık üzerine çalışmalar.',
            ),
            const SizedBox(height: 16),

            // Mayıs
            _buildProgramCard(
              ay: 'Mayıs',
              konular:
                  '• Oyun sırasında hız ve çeviklik geliştirme.\n• Vuruş tekniklerini geliştirme.\n• Yüksek hızda vuruş ve servis üzerine çalışmak.\n• Fiziksel kuvvet artırma.',
            ),
            const SizedBox(height: 16),

            // Haziran
            _buildProgramCard(
              ay: 'Haziran',
              konular:
                  '• Oyun sırasında karar verme becerisi.\n• Rakip analizi ve strateji geliştirme.\n• Çiftler oyununda takım uyumu.\n• Fiziksel hız çalışmaları.',
            ),
            const SizedBox(height: 16),

            // Temmuz
            _buildProgramCard(
              ay: 'Temmuz',
              konular:
                  '• Stratejik oyun ve hız üzerine çalışmalar.\n• Yüksek hızda servis ve vuruş teknikleri.\n• Takım uyumu ve iletişimi geliştirme.\n• Fiziksel dayanıklılık çalışmaları.',
            ),
            const SizedBox(height: 16),

            // Ağustos
            _buildProgramCard(
              ay: 'Ağustos',
              konular:
                  '• Fiziksel kuvvet geliştirme.\n• Hızlı reaksiyon ve top kontrolü.\n• Oyun sırasında strateji geliştirme.\n• Zorlu vuruş tekniklerini öğrenme.',
            ),
            const SizedBox(height: 16),

            // Eylül
            _buildProgramCard(
              ay: 'Eylül',
              konular:
                  '• Çiftler oyununda strateji geliştirme.\n• Hız ve çeviklik çalışmaları.\n• Oyun sırasındaki stratejik kararlar.\n• Yüksek hızda vuruş teknikleri.',
            ),
            const SizedBox(height: 16),

            // Ekim
            _buildProgramCard(
              ay: 'Ekim',
              konular:
                  '• Yüksek hızda servis ve vuruş teknikleri.\n• Strateji ve takım uyumunu geliştirme.\n• Fiziksel dayanıklılık üzerine çalışmalar.\n• Rakip analizi ve çözüm önerileri.',
            ),
            const SizedBox(height: 16),

            // Kasım
            _buildProgramCard(
              ay: 'Kasım',
              konular:
                  '• Hızlı top kontrolü ve reaksiyon sürelerini geliştirme.\n• Çiftler oyununda takım uyumunu artırma.\n• Stratejik oyun geliştirme.\n• Fiziksel kuvvet ve dayanıklılık üzerine çalışmak.',
            ),
            const SizedBox(height: 16),

            // Aralık
            _buildProgramCard(
              ay: 'Aralık',
              konular:
                  '• Yıl sonu değerlendirme ve gelişim.\n• Vuruş tekniklerini gözden geçirme.\n• Oyun stratejilerini gözden geçirme.\n• Eğlenceli maçlar ve değerlendirme.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramCard({required String ay, required String konular}) {
    return Card(
      color: const Color.fromARGB(255, 0, 42, 255), // Mavi tonları
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
