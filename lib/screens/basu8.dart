import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class BasketbolU8Page extends StatelessWidget {
  const BasketbolU8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U8 Basketbol Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // 1. Çeyrek
            Card(
              color: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 1 (Eylül - Kasım): Temel Hareket ve Basketbol Bilgisi',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 2 Antrenman (Her biri 45 dakika) ',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Temel hareketler: Dribbling, paslaşma, şut atışı',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Koordinasyon, hız ve çeviklik çalışmaları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Takım ruhu, temel oyun kuralları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Çeyrek
            Card(
              color: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 2 (Aralık - Şubat): Dribbling ve Pas Çalışmaları',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 2-3 Antrenman (Her biri 1 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Dribbling, pas, şut teknikleri',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Koordinasyon, hız, kuvvet geliştirme',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Takım oyununa adaptasyon',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Çeyrek
            Card(
              color: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 3 (Mart - Mayıs): Hücum ve Savunma Çalışmaları',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3 Antrenman (Her biri 1.5 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Hücum ve savunma geçişleri, takım paslaşması',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Hız ve çeviklik geliştirme, dayanıklılık çalışmaları',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Oyun zekâsı, takım stratejisi',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Çeyrek
            Card(
              color: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Çeyrek 4 (Haziran - Ağustos): Maç Hazırlığı ve Uygulama',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3 Antrenman + 1 Dostluk Maçı (Her biri 2 saat)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Oyun içi strateji, hızlı hücumlar, şut teknikleri',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Kondisyon çalışmaları, hız, dayanıklılık',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Maç içi strateji ve karar verme',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Ekstra öneriler
            Card(
              color: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
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
