import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketbolU18Page extends StatelessWidget {
  const BasketbolU18Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('U18-U20 Basketbol Antrenman Programı'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: ListView(
        children: [
          // First Quarter Card
          _buildQuarterCard(
            title: '1. Çeyrek (Ocak - Mart): Fiziksel Güçlenme ve Teknik İyileştirme',
            content: [
              '• Haftada 5-6 Antrenman (Her biri 2-2.5 saat)',
              '• Teknik Gelişim: İleri top sürme, şut mekaniği ve doğruluğu, pas hızlandırma ve doğruluk',
              '• Fiziksel Gelişim: Anaerobik dayanıklılık, genel kuvvet, core güçlendirme, patlayıcı kuvvet',
              '• Taktik Bilinç: Alan savunması ve adam adama savunma detayları, hızlı hücum',
            ],
          ),
          // Second Quarter Card
          _buildQuarterCard(
            title: '2. Çeyrek (Nisan - Haziran): İleri Taktiksel Çalışmalar ve Hücum-Savunma Geçişleri',
            content: [
              '• Haftada 5-6 Antrenman (Her biri 2-2.5 saat)',
              '• Teknik Gelişim: Şut çeşitliliği, hareketli turnike çalışmaları, baskı altındaki paslar',
              '• Fiziksel Gelişim: Hız, çeviklik, anaerobik dayanıklılık, çabuk toparlanma',
              '• Taktik Bilinç: Yardımlaşmalı savunma, hücum setleri, takım içi iletişim stratejileri',
            ],
          ),
          // Third Quarter Card
          _buildQuarterCard(
            title: '3. Çeyrek (Temmuz - Eylül): Maç Stratejisi ve Takım Uyumunu Güçlendirme',
            content: [
              '• Haftada 5-6 Antrenman + 1-2 Maç veya Turnuva Hazırlığı (Her biri 2.5 saat)',
              '• Teknik Gelişim: Şut ve pas kombinasyonları, hücum düzenleri, oyun kurma ve saha içi liderlik',
              '• Fiziksel Gelişim: Yüksek yoğunluklu dayanıklılık, hız ve çeviklik',
              '• Taktik Bilinç: Rakip analizi, maç içi strateji geliştirme, hızlı oyun geçişleri',
            ],
          ),
          // Fourth Quarter Card
          _buildQuarterCard(
            title: '4. Çeyrek (Ekim - Aralık): Maç Performansı ve Taktiksel Derinleşme',
            content: [
              '• Haftada 5-6 Antrenman + 1-2 Dostluk Maçı veya Turnuva (Her biri 2.5 saat)',
              '• Teknik Gelişim: Oyun içi şut seçenekleri, savunma yoğunluğu, oyun okuma yeteneği',
              '• Fiziksel Gelişim: Maç temposunda dayanıklılık, esneklik ve çabukluk, toparlanma',
              '• Taktik Bilinç: Gelişmiş maç stratejileri, sporcu liderliği, takım ruhunu geliştirme',
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build each quarter card
  Widget _buildQuarterCard({required String title, required List<String> content}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      color: const Color.fromARGB(255, 0, 64, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ...content.map(
              (line) => Text(
                line,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


