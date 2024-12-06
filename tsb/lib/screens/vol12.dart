import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoleybolU12Page extends StatelessWidget {
  const VoleybolU12Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U12 Voleybol Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 55, 0, 255), // Yeni renk
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // 1. Çeyrek
            Card(
              color: const Color.fromARGB(255, 55, 0, 255), // Yeni renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 1 (Ocak - Mart): Temel Teknik ve Fiziksel Hazırlık',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 2-3 Antrenman (Her biri 1-1.5 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Pas, manşet, servis, smaç tekniği',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Koordinasyon, dayanıklılık, temel kuvvet çalışmaları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Temel strateji, oyun kuralları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Çeyrek
            Card(
              color: const Color.fromARGB(255, 55, 0, 255), // Yeni renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 2 (Nisan - Haziran): Teknik Gelişim ve Takım Çalışması',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3 Antrenman (Her biri 1.5-2 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Blok, hareketli pas, hücum ve savunma geçişleri',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Hız, çeviklik, core güçlendirme çalışmaları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Karar verme yetenekleri, takım içi iletişim',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Çeyrek
            Card(
              color: const Color.fromARGB(255, 55, 0, 255), // Yeni renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 3 (Temmuz - Eylül): Taktiksel Çalışmalar ve Kondisyon',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3 Antrenman + 1 Maç Simülasyonu (Her biri 2 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Taktiksel servis, blok yerleşimi, hücum varyasyonları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Kondisyon artırma, dayanıklılık ve hız çalışmaları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Rakip analizi, oyun okuma, özgüven geliştirme',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Çeyrek
            Card(
              color: const Color.fromARGB(255, 55, 0, 255), // Yeni renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 4 (Ekim - Aralık): Maç Hazırlığı ve Gelişim',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3 Antrenman + 1 Dostluk Maçı (Her biri 2-2.5 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Maç içi performans değerlendirme, oyun stratejisi uygulama',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Yüksek yoğunluklu antrenmanlar, toparlanma teknikleri',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Stres yönetimi, maç öncesi hazırlık rutini',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Ekstra öneriler
            Card(
              color: const Color.fromARGB(255, 54, 0, 251), // Yeni renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Öneriler:',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Dinlenme ve Rejenerasyon Haftaları: Her çeyrekte 1 hafta dinlenme.',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Gelişim Kontrolü: Çeyrek başı ve sonunda fiziksel ve teknik testler.',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Turnuva Katılımı: 3. veya 4. çeyrekte turnuvalara katılım ile maç deneyimi.',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
