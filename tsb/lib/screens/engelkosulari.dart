import 'package:flutter/material.dart';

class EngelKosulariPage extends StatelessWidget {
  const EngelKosulariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Engel Koşuları Antrenman Planı"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 255), // Orange color
      ),
      body: ListView(
        children: [
          // Month 1-4 - Basic Preparation Phase
          _buildCard(
            context,
            title: "Temel Hazırlık Dönemi (1-4. Aylar)",
            content:
                "Bu dönemde genel kuvvet, hız, dayanıklılık ve engel tekniğinin temelini geliştirmeye odaklanılır.",
            backgroundColor: const Color.fromARGB(255, 0, 21, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "1-2. Aylar (Genel Kuvvet ve Dayanıklılık)",
            content:
                "Kuvvet çalışmaları (haftada 3-4 gün): squat, deadlift, lunge, core çalışmaları.",
            backgroundColor: const Color.fromARGB(255, 0, 26, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "3-4. Aylar (Esneklik ve Engel Tekniği)",
            content:
                "Teknik odaklı engel çalışmaları: adım uzunluğu ayarlama, engeli geçiş açısı.",
            backgroundColor: const Color.fromARGB(255, 0, 38, 255), // Orange color
            textColor: Colors.white,
          ),

          // Month 5-9 - Specific Preparation Phase
          _buildCard(
            context,
            title: "Spesifik Hazırlık Dönemi (5-9. Aylar)",
            content:
                "Bu dönemde hız, patlayıcı güç, teknik ve engel geçişine odaklanılır.",
            backgroundColor: const Color.fromARGB(255, 4, 0, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "5-6. Aylar (Patlayıcı Güç ve Teknik Geliştirme)",
            content:
                "Plyometrik çalışmalar: squat jump, box jump, triple jump.",
            backgroundColor: const Color.fromARGB(255, 8, 0, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "7-8. Aylar (Hız ve Engel Geçiş Simülasyonu)",
            content:
                "Tam hızda engelli koşu çalışmaları: her engel arasındaki mesafede ideal ritmi ve tekniği koruyarak hızlanma.",
            backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "9. Ay (Dayanıklılık ve Toparlanma)",
            content:
                "Daha düşük yoğunluklu, uzun mesafeli koşular. Engellerle düşük tempolu teknik çalışmaları.",
            backgroundColor: const Color.fromARGB(255, 25, 0, 255), // Orange color
            textColor: Colors.white,
          ),

          // Month 10-12 - Competition Phase
          _buildCard(
            context,
            title: "Yarışma Dönemi (10-12. Aylar)",
            content:
                "Bu dönemde hız, teknik ve patlayıcı gücün en yüksek seviyeye çıkarılması hedeflenir.",
            backgroundColor: const Color.fromARGB(255, 0, 26, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "10-11. Aylar (Tam Hızda Teknik Çalışma ve Yarışma Simülasyonu)",
            content:
                "Tam hızda engelli koşular: engeller arasında en iyi ritmi ve geçişi sağlama.",
            backgroundColor: const Color.fromARGB(255, 0, 47, 255), // Orange color
            textColor: Colors.white,
          ),
          _buildCard(
            context,
            title: "12. Ay (Dinlenme ve Yarışma)",
            content:
                "Yarış öncesi yoğunluk azaltılır: haftada 1-2 hafif teknik ve hız çalışması.",
            backgroundColor: const Color.fromARGB(255, 8, 0, 255), // Orange color
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
