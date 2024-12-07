import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 0, 0, 255); // Orange color
  static const Color textColor = Colors.white; // White text color
}

class YuruyusPage extends StatelessWidget {
  const YuruyusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yürüyüş Antrenman Planı"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView(
        children: [
          _buildCard(
            context,
            title: "Temel Hazırlık Dönemi (1-4. Aylar)",
            content:
                "Bu dönemde genel kuvvet, dayanıklılık, esneklik ve temel teknik çalışmaları yapılır.",
          ),
          _buildCard(
            context,
            title: "1-2. Aylar (Dayanıklılık ve Genel Kuvvet)",
            content:
                "Haftada 3-4 gün dayanıklılık çalışmaları: orta tempolu yürüyüş (60-90 dakika).",
          ),
          _buildCard(
            context,
            title: "3-4. Aylar (Dayanıklılık Artışı ve Teknik Geliştirme)",
            content:
                "Uzun mesafe yürüyüşleri: dayanıklılığı artırmak için 90-120 dakika yürüyüş.",
          ),
          _buildCard(
            context,
            title: "Spesifik Hazırlık Dönemi (5-9. Aylar)",
            content:
                "Bu dönemde hız, dayanıklılık, teknik ve kuvvet odaklı çalışmalar yapılır.",
          ),
          _buildCard(
            context,
            title: "5-6. Aylar (Dayanıklılık ve Hız)",
            content:
                "Mesafe artışı: 2-3 saat süren orta-uzun mesafe yürüyüşleri (haftada 1-2 gün).",
          ),
          _buildCard(
            context,
            title: "7-8. Aylar (Hız ve Teknik Odaklı Çalışmalar)",
            content:
                "Hız ve tempo antrenmanları: haftada 1-2 gün, kısa mesafeli yüksek hız yürüyüşleri (örneğin, 6x400 metre tempolu yürüyüş).",
          ),
          _buildCard(
            context,
            title: "9. Ay (Toparlanma ve Hız Artışı)",
            content:
                "Düşük yoğunlukta uzun mesafe yürüyüşleri: haftada 1-2 gün, tempo azaltılmış.",
          ),
          _buildCard(
            context,
            title: "Yarışma Dönemi (10-12. Aylar)",
            content:
                "Bu dönemde maksimum performansa ulaşmak için hız, dayanıklılık ve teknik odaklı kısa antrenmanlar yapılır.",
          ),
          _buildCard(
            context,
            title: "10-11. Aylar (Yoğun Teknik Çalışma ve Yarışma Simülasyonu)",
            content:
                "Tam hızda tempolu yürüyüş çalışmaları: 5-10 kilometrelik yüksek hız yürüyüşleri.",
          ),
          _buildCard(
            context,
            title: "12. Ay (Dinlenme ve Yarışma)",
            content:
                "Yarış öncesi yoğunluğu azalt: haftada 1-2 hafif teknik ve hız çalışması.",
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 0, 21, 255),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, color: AppColors.textColor),
        ),
        subtitle: Text(
          content,
          style: const TextStyle(fontSize: 14, color: AppColors.textColor),
        ),
      ),
    );
  }
}
