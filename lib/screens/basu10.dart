import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketbolU10U12Page extends StatelessWidget {
  const BasketbolU10U12Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U10 ve U12 Basketbol Antrenman Programı',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Neon lacivert renk
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // U10 - Çeyrek 1
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
                      'U10 Çeyrek 1 (Eylül - Kasım): Temel Hareket ve Basketbol Bilgisi',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 2 Antrenman (Her biri 45 dakika)',
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

            // U12 - Çeyrek 1
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
                      'U12 Çeyrek 1 (Eylül - Kasım): Dribbling ve Pas Çalışmaları',
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

            // U10 - Çeyrek 2
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
                      'U10 Çeyrek 2 (Aralık - Şubat): Hücum ve Savunma Çalışmaları',
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
                      '• Teknik: Hücum, savunma geçişleri',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Çeviklik, hız geliştirme',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Oyun stratejisi, takım uyumu',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // U12 - Çeyrek 2
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
                      'U12 Çeyrek 2 (Aralık - Şubat): Oyun İçi Strateji ve Şut Teknikleri',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 2-3 Antrenman (Her biri 1 saat 15 dakika)',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik: Şut, oyun içi strateji',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel: Kuvvet, hız geliştirme',
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Mental: Zeka ve karar verme becerileri',
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
                      'Öneriler: ',
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
