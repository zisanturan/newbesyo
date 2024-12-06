import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const U12Page());
}

class U12Page extends StatelessWidget {
  const U12Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: U12ProgramPage(),
    );
  }
}

class U12ProgramPage extends StatelessWidget {
  const U12ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "U12 Yıllık Antrenman Planı",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 17, 255), // Koyu turuncu
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildU12Card(
                context,
                "Ağustos",
                "Hızlı reaksiyonlar ve teknik becerilerin geliştirilmesi.",
                "Çift yönlü oyunlar.",
                "Yüksek hız ve dayanıklılık çalışmaları.",
                "Küçük yarışmalar.",
                "Defansif set oyunları.",
                "Bireysel top kontrolü.",
                "Grup Taktikleri: Savunma organizasyonu.",
                "Gelişen takım oyunu.",
              ),
              buildU12Card(
                context,
                "Eylül",
                "Çalımla geçiş oyunları.",
                "Yüksek tempolu teknik egzersizler.",
                "Düşük ve yüksek tempolu hız oyunları.",
                "Bireysel savunma taktikleri.",
                "Top kontrolü ve pas organizasyonu.",
                "Grup maçları.",
                "Bireysel performans analizi.",
                "Yüksek hızda oynama.",
              ),
              buildU12Card(
                context,
                "Ekim",
                "Hedef vuruşları ve 1v1 paslaşma teknikleri.",
                "Defansif yerleşim çalışmaları.",
                "Top sürme ve alan yaratma.",
                "Hızlı geçiş çalışmaları.",
                "Çalımdan sonra hızlı top paslaşma.",
                "Bireysel ve grup savunma teknikleri.",
                "Takım içi organizasyon geliştirme.",
                "Ekip içi iletişim.",
              ),
              buildU12Card(
                context,
                "Kasım",
                "Fiziksel dayanıklılık geliştirme.",
                "Çalımla geçiş oyunları.",
                "Bireysel hücum taktikleri.",
                "Yüksek tempo ile takım oyunları.",
                "Bireysel gol vuruşu teknikleri.",
                "Savunma stratejileri.",
                "Paslaşma hızlandırma.",
                "Hızlı geçişleri oyun içinde denemek.",
              ),
              buildU12Card(
                context,
                "Aralık",
                "Konsantrasyon geliştirme.",
                "Defansif yerleşim ve grup oyunları.",
                "Çalımlar ve hız oyunları.",
                "Bireysel ve grup taktiği geliştirme.",
                "Orta saha organizasyonu.",
                "Grup maçları ve takımla işbirliği.",
                "Özgür oyun ile yaratıcılık.",
                "Maç analizleri.",
              ),
              buildU12Card(
                context,
                "Ocak",
                "Bireysel çalımlar ve hız taktikleri.",
                "Teknik yeterlilik için grup çalışmaları.",
                "Paslaşma ve hücum organizasyonu.",
                "Defansif stratejiler.",
                "Top sürme ve alanda üstünlük sağlama.",
                "Bireysel gol vuruşları.",
                "Takım içi motivasyon artırma.",
                "Sürekli eğitim ve konsantrasyon.",
              ),
              buildU12Card(
                context,
                "Şubat",
                "Yüksek tempo ile takım oyunları.",
                "Savunma ve hücum geçişlerini çalışmak.",
                "Bireysel gol vuruşu çalışmaları.",
                "Takım içi organizasyon teknikleri.",
                "Orta saha kontrolü.",
                "Grup maçları.",
                "Hızlı geçişlerle strateji geliştirme.",
                "Bireysel teknik geliştirme.",
              ),
              buildU12Card(
                context,
                "Mart",
                "Teknik becerilerin pekiştirilmesi.",
                "Çift yönlü savunma çalışmaları.",
                "Bireysel hız geliştirme.",
                "Grup organizasyonu ve takım savunması.",
                "Orta saha geçişleri ve hücum stratejileri.",
                "Bireysel oyun becerilerinin test edilmesi.",
                "Çalışmalarla özgüven kazandırma.",
                "Takım taktiği geliştirme.",
              ),
              buildU12Card(
                context,
                "Nisan",
                "Hız ve reaksiyon geliştirme.",
                "Çalımla geçiş oyunları.",
                "Yüksek tempolu paslaşma çalışmaları.",
                "Bireysel ve grup geçişleri.",
                "Orta saha stratejileri.",
                "Defansif pozisyon alma.",
                "Grup maçları.",
                "Çift yönlü savunma ve hücum geçişi.",
              ),
              buildU12Card(
                context,
                "Mayıs",
                "Küçük maçlar ve özgür oyun.",
                "Yüksek tempo paslaşma çalışmaları.",
                "Defansif organizasyon geliştirme.",
                "Bireysel top kontrolü.",
                "Takım içi strateji geliştirme.",
                "Çalımlarla alan yaratma.",
                "Savunma yerleşim teknikleri.",
                "Yüksek enerjili antrenmanlar.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildU12Card(
    BuildContext context,
    String month,
    String tactic,
    String physical,
    String personality,
    String defensiveTactic,
    String weightFocus,
    String offensiveTactic,
    String groupTactics,
    String additionalInfo,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
      color: const Color.fromARGB(255, 0, 26, 255), // Turuncu tonları
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              month,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255), // Koyu turuncu
              ),
            ),
            const SizedBox(height: 8),
            _buildTableRow("Taktik/Teknik", tactic),
            _buildTableRow("Fiziksel/Atletik", physical),
            _buildTableRow("Kişilik", personality),
            _buildTableRow("Bireysel Taktik (Defansif)", defensiveTactic),
            _buildTableRow("Ağırlık Noktası", weightFocus),
            _buildTableRow("Bireysel Taktik (Ofansif)", offensiveTactic),
            _buildTableRow("Grup Taktikleri", groupTactics),
            _buildTableRow("Ekstra Bilgi", additionalInfo),
          ],
        ),
      ),
    );
  }

  Widget _buildTableRow(String header, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            "$header: ",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
