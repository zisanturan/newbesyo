import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FutbolU9Page());
}

class FutbolU9Page extends StatelessWidget {
  const FutbolU9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FutbolProgramPage(),
    );
  }
}

class FutbolProgramPage extends StatelessWidget {
  const FutbolProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yıllık Antrenman Planı",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Koyu turuncu
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildMonthCard(
                context,
                "Ağustos",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Reaksiyon ve oryantasyon becerileri geliştirme.",
                "Takım ruhunu sağlamak, sosyalleşmeyi öğrenmek.",
                "Küçük yarışmalar ve 1v1 oyunlar.",
                "Teknik ağırlık",
                "Küçük maçlar eşit sayıda ve özgür maçlar (1v1, 2v2).",
                "Grup Taktikleri: Takım içi organizasyon, toplu savunma.",
              ),
              buildMonthCard(
                context,
                "Eylül",
                "Kaleye doğru 1v1 küçük yarışmalar (çizgiler daha dikine).",
                "Konsantrasyonla tüm egzersizlerde farkındalık sağlama.",
                "Vücudunu hissetme ve farkındalık kazandırma.",
                "Küçük 1v1 oyunlar",
                "Çalımdan sonra hedef vurma oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Hücum planlaması, takım geçişleri.",
              ),
              buildMonthCard(
                context,
                "Ekim",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Hız ve reaksiyon becerilerini geliştirme.",
                "Konsantrasyon ve egzersizlerle farkındalık sağlama.",
                "Çalımdan sonra ayağın her tarafıyla hareketler",
                "Teknik ağırlık gol vuruşları",
                "Küçük oyunlar ve özgür maç (2v2, 3v3)",
                "Grup Taktikleri: Orta saha organizasyonu, oyun kurma.",
              ),
              buildMonthCard(
                context,
                "Kasım",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Balans çalışmalarıyla dengeyi öğrenme.",
                "Takım arkadaşının farkına varma ve üstünlük kurma.",
                "Çalımdan sonra top sürme teknikleri",
                "Teknik ağırlık gol vuruşları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Yüksek pres ve takım savunması.",
              ),
              buildMonthCard(
                context,
                "Aralık",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Oryantasyon becerilerini çeşitli toplarla geliştirme.",
                "Rakibin farkına varmayı öğrenme ve sosyalleşme.",
                "Çalımdan sonra kademe çalışmaları",
                "Çalımla küçük yarışmalar",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Geçiş oyunları, savunma organizasyonu.",
              ),
              buildMonthCard(
                context,
                "Ocak",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Reaksiyon becerilerinin küçük oyunlarla gelişmesi.",
                "Performans değerlendirme ve özgüveni destekleme.",
                "Küçük ağırlık noktalı 1v1 maçlar",
                "Hedefe isabet oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Yüksek pres, set savunma.",
              ),
              buildMonthCard(
                context,
                "Şubat",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Koordinasyon becerilerini geliştirme.",
                "Vücut hissini öğrenme ve özgüveni destekleme.",
                "Çalım işaretleriyle slalom",
                "Hedefe isabet oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Çift pivot oyun, topa sahip olma.",
              ),
              buildMonthCard(
                context,
                "Mart",
                "Savunma temel bilgileri az sayıda 1v1, 1v3 yakalamak.",
                "Hız ve reaksiyon eğitimleri.",
                "Rakip oyuncuları hissetme ve eğlenceli antrenmanlar.",
                "Ayağın her bölümüyle çalım teknikleri",
                "Sayısal üstünlük kurma",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Paslaşma hızı ve alan savunması.",
              ),
              buildMonthCard(
                context,
                "Nisan",
                "Gş hedef vurma oyunları.",
                "Koordinasyon becerilerini çeşitli toplarla geliştirme.",
                "Konsantrasyon ve farkındalık geliştirme.",
                "Ayağın her bölümüyle çalım teknikleri",
                "Sayısal üstünlük kurma",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Genişleme ve alan yaratma.",
              ),
              buildMonthCard(
                context,
                "Mayıs",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Çift yönlü oyunlar ve sürekli yer değişimi.",
                "Hız ve dayanıklılığı birleştirme.",
                "Çalımdan sonra set oyunları",
                "Teknik ağırlık defansif ve ofansif set oyunları",
                "Özgür maç 3v3, 4v4",
                "Grup Taktikleri: Hızlı hücum, topa sahip olma.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMonthCard(
    BuildContext context,
    String month,
    String tactic,
    String physical,
    String personality,
    String defensiveTactic,
    String weightFocus,
    String offensiveTactic,
    String groupTactics,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
      color: const Color.fromARGB(255, 0, 72, 255), // Turuncu tonları
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
          ],
        ),
      ),
    );
  }

  Widget _buildTableRow(String header, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                content,
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(221, 251, 251, 251),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
