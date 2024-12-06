import 'package:flutter/material.dart';

class SiriklaAtlamaPage extends StatelessWidget {
  const SiriklaAtlamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sırıkla Atlama Antrenman Planı"),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
      ),
      body: ListView(
        children: [
          // Month 1-4 - Basic Preparation Phase
          _buildCard(
            context,
            title: "Temel Hazırlık Dönemi (1-4. Aylar)",
            content:
                "Bu dönem, genel kuvvet, hız, esneklik ve temel teknik çalışmalara odaklanır.",
            backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "1-2. Aylar (Genel Kuvvet ve Dayanıklılık)",
            content:
                "Haftada 3-4 gün kuvvet antrenmanı: squat, deadlift, çekiş egzersizleri, core çalışmaları.",
            backgroundColor: const Color.fromARGB(255, 0, 60, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "3-4. Aylar (Teknik Temeli ve Esneklik)",
            content:
                "Temel sırık teknikleri: sıçrama açısı, sırığı doğru kavrama ve taşıma çalışmaları.",
            backgroundColor: const Color.fromARGB(255, 0, 81, 255), // Orange color
            textColor: Colors.white,
          ),

          // Month 5-9 - Specific Preparation Phase
          _buildCard(
            context,
            title: "Spesifik Hazırlık Dönemi (5-9. Aylar)",
            content:
                "Bu dönemde hız, patlayıcı kuvvet ve teknik odaklı antrenmanlar yapılır.",
            backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "5-6. Aylar (Patlayıcı Güç ve Teknik Geliştirme)",
            content:
                "Haftada 2-3 gün kuvvet antrenmanları (yüksek ağırlık-düşük tekrar).",
            backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "7-8. Aylar (Hız ve Sırık Kullanımında İvmelenme)",
            content:
                "Tam sırık çalışmaları: 8-10 adımla sırık denemeleri.",
            backgroundColor: const Color.fromARGB(255, 0, 13, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "9. Ay (Toparlanma ve Dayanıklılık)",
            content:
                "Hız çalışmaları ve sırıkla orta yükseklikte denemeler.",
            backgroundColor: const Color.fromARGB(255, 8, 0, 255), // Orange color
            textColor: Colors.white,
          ),

          // Month 10-12 - Competition Phase
          _buildCard(
            context,
            title: "Yarışma Dönemi (10-12. Aylar)",
            content:
                "Bu dönemde, en iyi performans için hız, patlayıcı kuvvet ve teknik odaklı kısa antrenmanlar yapılır.",
            backgroundColor: const Color.fromARGB(255, 0, 60, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "10-11. Aylar (Tam Hız ve Yarışma Simülasyonu)",
            content:
                "Tam hızda sırıkla sıçramalar: 10-12 adımda sıçrama denemeleri.",
            backgroundColor: const Color.fromARGB(255, 0, 30, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "12. Ay (Dinlenme ve Yarışma)",
            content:
                "Yarış öncesi yoğunluk azalır: haftada 1-2 hafif teknik çalışma.",
            backgroundColor: const Color.fromARGB(255, 0, 38, 255), // Orange color
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String content,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: backgroundColor,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 18, color: textColor),
        ),
        subtitle: Text(
          content,
          style: TextStyle(fontSize: 14, color: textColor),
        ),
      ),
    );
  }
}

