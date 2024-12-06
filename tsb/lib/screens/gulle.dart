import 'package:flutter/material.dart';

class GulleAtmaPage extends StatelessWidget {
  const GulleAtmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 255), // Orange color
        title: const Text("Gülle Atma Yıllık Plan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildTrainingCard("1. Ay - Dayanıklılık ve Genel Kuvvet",
                "Haftada 4 gün antrenman. Genel kuvvet ve dayanıklılık çalışmaları."),
            buildTrainingCard("2. Ay - Kuvvet ve Patlayıcı Güç",
                "Haftada 4 gün antrenman. Patlayıcı güç ve kuvvet artırma odaklı."),
            buildTrainingCard("3. Ay - Teknik ve Hız Geliştirme",
                "Haftada 5 gün antrenman. Teknik gelişim ve hız artırma."),
            buildTrainingCard("4. Ay - Teknik ve Çekirdek Güç",
                "Haftada 5 gün antrenman. Teknik hassasiyet ve çekirdek güç."),
            buildTrainingCard("5. Ay - Patlayıcı Güç ve Hız Antrenmanı",
                "Haftada 4 gün antrenman. Patlayıcı güç ve hız geliştirme."),
            buildTrainingCard("6. Ay - Teknik ve Güç Çalışması",
                "Haftada 5 gün antrenman. Hız ve teknik üzerinde yoğunlaşma."),
            buildTrainingCard("7. Ay - Yarışma Hazırlığı ve Performans",
                "Haftada 5 gün antrenman. Yarışma temposuna odaklanma."),
            buildTrainingCard("8. Ay - Teknik ve Güç Pekiştirme",
                "Haftada 5 gün antrenman. Maksimum güç ve teknik doğrulama."),
            buildTrainingCard("9. Ay - Teknik Stabilizasyon ve Hız Koruma",
                "Haftada 4 gün antrenman. Teknik istikrar ve hız koruma."),
            buildTrainingCard("10. Ay - Yarışma Dönemi Hazırlıkları",
                "Haftada 4 gün antrenman. Yarışma temposu için hazırlık."),
            buildTrainingCard("11. Ay - Hafif Teknik Çalışmalar ve Dinlenme",
                "Haftada 3 gün antrenman. Hafif tekrarlar ve dinlenme."),
            buildTrainingCard("12. Ay - Sezon Sonu Dinlenme ve Toparlama",
                "Haftada 3 gün antrenman. Hafif koşu ve esneme, toparlanma."),
          ],
        ),
      ),
    );
  }

  Widget buildTrainingCard(String title, String description) {
    return Card(
      color: const Color.fromARGB(255, 0, 64, 255), 
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
        onTap: () {
          // Add action to navigate to a detailed page or expand the description.
        },
      ),
    );
  }
}
