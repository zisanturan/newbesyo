import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const U11Page());
}

class U11Page extends StatelessWidget {
  const U11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: U11ProgramPage(),
    );
  }
}

class U11ProgramPage extends StatelessWidget {
  const U11ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "U11 Yıllık Antrenman Planı",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 26, 255), // Koyu turuncu
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildU11Card(
                context,
                "Ağustos",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Reaksiyon ve hız becerileri geliştirme.",
                "Takım oyunu ve iletişim becerilerini güçlendirme.",
                "Küçük yarışmalar ve 1v1 oyunlar.",
                "Teknik ağırlık top kontrolü ve pas teknikleri.",
                "Küçük maçlar eşit sayıda ve özgür maçlar (1v1, 2v2).",
                "Grup Taktikleri: Takım içi organizasyon, toplu savunma.",
                "Oyun için motivasyon sağlama.",
              ),
              buildU11Card(
                context,
                "Eylül",
                "Kaleye doğru 1v1 küçük yarışmalar (çizgiler daha dikine).",
                "Konsantrasyonla tüm egzersizlerde farkındalık sağlama.",
                "Vücudunu hissetme ve farkındalık kazandırma.",
                "Küçük 1v1 oyunlar",
                "Çalımdan sonra hedef vurma oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Hücum planlaması, takım geçişleri.",
                "Yüksek enerjili antrenmanlar.",
              ),
              buildU11Card(
                context,
                "Ekim",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Hız ve reaksiyon becerilerini geliştirme.",
                "Konsantrasyon ve egzersizlerle farkındalık sağlama.",
                "Çalımdan sonra ayağın her tarafıyla hareketler",
                "Teknik ağırlık gol vuruşları",
                "Küçük oyunlar ve özgür maç (2v2, 3v3)",
                "Grup Taktikleri: Orta saha organizasyonu, oyun kurma.",
                "Top kontrolünü geliştirme.",
              ),
              buildU11Card(
                context,
                "Kasım",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Balans çalışmalarıyla dengeyi öğrenme.",
                "Takım arkadaşının farkına varma ve üstünlük kurma.",
                "Çalımdan sonra top sürme teknikleri",
                "Teknik ağırlık gol vuruşları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Yüksek pres ve takım savunması.",
                "Hızlı geçiş oyunları.",
              ),
              buildU11Card(
                context,
                "Aralık",
                "Kaleye doğru 1v1 küçük yarışmalar.",
                "Oryantasyon becerilerini çeşitli toplarla geliştirme.",
                "Rakibin farkına varmayı öğrenme ve sosyalleşme.",
                "Çalımdan sonra kademe çalışmaları",
                "Çalımla küçük yarışmalar",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Geçiş oyunları, savunma organizasyonu.",
                "Ekip ruhunu güçlendirme.",
              ),
              buildU11Card(
                context,
                "Ocak",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Reaksiyon becerilerinin küçük oyunlarla gelişmesi.",
                "Performans değerlendirme ve özgüveni destekleme.",
                "Küçük ağırlık noktalı 1v1 maçlar",
                "Hedefe isabet oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Yüksek pres, set savunma.",
                "Yavaş tempolu hızlanma egzersizleri.",
              ),
              buildU11Card(
                context,
                "Şubat",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Koordinasyon becerilerini geliştirme.",
                "Vücut hissini öğrenme ve özgüveni destekleme.",
                "Çalım işaretleriyle slalom",
                "Hedefe isabet oyunları",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Çift pivot oyun, topa sahip olma.",
                "Odaklanmayı artırma.",
              ),
              buildU11Card(
                context,
                "Mart",
                "Savunma temel bilgileri az sayıda 1v1, 1v3 yakalamak.",
                "Hız ve reaksiyon eğitimleri.",
                "Rakip oyuncuları hissetme ve eğlenceli antrenmanlar.",
                "Ayağın her bölümüyle çalım teknikleri",
                "Sayısal üstünlük kurma",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Paslaşma hızı ve alan savunması.",
                "Yüksek yoğunluklu egzersizler.",
              ),
              buildU11Card(
                context,
                "Nisan",
                "Gş hedef vurma oyunları.",
                "Koordinasyon becerilerini çeşitli toplarla geliştirme.",
                "Konsantrasyon ve farkındalık geliştirme.",
                "Ayağın her bölümüyle çalım teknikleri",
                "Sayısal üstünlük kurma",
                "Özgür maç 2v2, 3v3",
                "Grup Taktikleri: Genişleme ve alan yaratma.",
                "Fiziksel güç ve dayanıklılık.",
              ),
              buildU11Card(
                context,
                "Mayıs",
                "Küçük yarışmalar 1v1 kaleye doğru çizgiler dikine.",
                "Çift yönlü oyunlar ve sürekli yer değişimi.",
                "Hız ve dayanıklılığı birleştirme.",
                "Çalımdan sonra set oyunları",
                "Teknik ağırlık defansif ve ofansif set oyunları",
                "Özgür maç 3v3, 4v4",
                "Grup Taktikleri: Hızlı hücum, topa sahip olma.",
                "Bireysel performans analizi.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildU11Card(
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
      color: const Color.fromARGB(255, 0, 60, 255), // Turuncu tonları
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
                color: const Color.fromARGB(255, 0, 60, 255), // Koyu turuncu
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
