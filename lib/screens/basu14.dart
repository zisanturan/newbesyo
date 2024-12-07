import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketbolU14Page extends StatelessWidget {
  const BasketbolU14Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'U14-U16 Basketbol Antrenman Programı',
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
                      'Çeyrek 1 (Ocak - Mart): Teknik Gelişim ve Fiziksel Dayanıklılık',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 3-4 Antrenman (Her biri 1.5-2 saat)',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik Gelişim: Top sürme hız ve kontrol çalışmaları, doğru pas teknikleri (göğüs, tek el, bounce), şut mekaniği',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel Gelişim: Dayanıklılık, temel kuvvet, hız ve çeviklik çalışmaları, denge ve core güçlendirme',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Taktik Bilinç: Saha pozisyonları, alan savunması, hızlı hücum temel bilgileri',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
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
                      'Çeyrek 2 (Nisan - Haziran): İleri Teknikler ve Hücum-Savunma Geçişleri',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 4 Antrenman (Her biri 1.5-2 saat)',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik Gelişim: İleri pas teknikleri (tek elle, zıplayarak pas), hareketli şutlar, turnike çalışmaları',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel Gelişim: Çabukluk, patlayıcı kuvvet, hız artırıcı çalışmalar',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Taktik Bilinç: Adam adama savunma stratejileri, hücum-savunma geçişleri, takım içi iletişim',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
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
                      'Çeyrek 3 (Temmuz - Eylül): Hücum ve Savunma Organizasyonu',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 4-5 Antrenman + 1 Maç Simülasyonu (Her biri 2 saat)',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik Gelişim: Şut ve pas kombinasyonları, set hücumları, hızlı hücum',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel Gelişim: Çeviklik, dayanıklılık, core çalışmaları, esneklik',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Taktik Bilinç: Yardımlaşmalı savunma, saha yerleşimi, basit hücum setleri',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
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
                      'Çeyrek 4 (Ekim - Aralık): Maç Hazırlığı ve Taktiksel Derinleşme',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '• Haftada 4-5 Antrenman + 1-2 Dostluk Maçı veya Turnuva (Her biri 2 saat)',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Teknik Gelişim: Maç içi şut ve pas uygulamaları, birebir savunma, hücum setleri',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Fiziksel Gelişim: Maç temposuna yönelik dayanıklılık, toparlanma ve esneklik çalışmaları',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Taktik Bilinç: Maç stratejileri, oyun kurallarının detaylandırılması, takım ruhu',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Ekstra Öneriler
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
                      '• Dinlenme Haftaları: Her çeyrekte 1 hafta aktif dinlenme.',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Gelişim Takibi: Çeyrek başında ve sonunda beceri ve fiziksel testler.',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      '• Turnuva ve Dostluk Maçları: Oyun deneyimini artırmak için 3. ve 4. çeyreklerde düzenli katılım.',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
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
