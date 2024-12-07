import 'package:flutter/material.dart';

class MaratonPage extends StatelessWidget {
  const MaratonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 255), // AppBar with orange color
        title: const Text('Maraton Yıllık Planı'),
      ),
      body: ListView(
        children: [
          _buildTrainingCard(
            context,
            '1. Temel Hazırlık Dönemi (1-4. Aylar)',
            'Bu dönemde dayanıklılık, genel kuvvet, hızlanma ve temel koşu tekniğini geliştirmeye odaklanılır.',
            [
              '1-2. Aylar (Dayanıklılık ve Genel Kuvvet)',
              'Uzun mesafe koşuları: Haftada bir gün 10-15 km arasında, hafif tempolu uzun koşu.',
              'Dayanıklılık koşuları: Haftada 3 gün, 5-8 km arasında sabit tempoda koşu.',
              'Kuvvet antrenmanı: Haftada 2 gün, bacak, core ve üst vücut kuvvetini geliştiren ağırlık çalışmaları.',
              'Esneklik çalışmaları: Koşu sonrası statik esneme ve yoga.',
              '3-4. Aylar (Dayanıklılık Artışı ve Hız)',
              'Mesafe artırma: Haftalık uzun koşuları 15-20 km’ye çıkarma.',
              'Hızlanma antrenmanları: Haftada 1 gün, 200-400 m interval koşular.',
              'Kuvvet ve denge çalışmaları: Core güçlendirme ve denge çalışmaları.',
              'Esneklik: Her antrenmandan sonra statik esneme.',
            ],
          ),
          _buildTrainingCard(
            context,
            '2. Spesifik Hazırlık Dönemi (5-9. Aylar)',
            'Bu dönemde hız, dayanıklılık ve temposunu artırmaya yönelik özel antrenmanlar yapılır.',
            [
              '5-6. Aylar (Dayanıklılık ve Tempo Artışı)',
              'Uzun koşular: Haftada bir gün, 20-25 km arası uzun tempolu koşular.',
              'Tempo koşuları: Haftada 1-2 gün, 10-15 km arasında sabit tempolu koşular.',
              'Interval çalışmaları: Haftada bir gün 400-800 m interval koşular.',
              'Kuvvet antrenmanı: Haftada 2 gün düşük ağırlık ve yüksek tekrar odaklı çalışmalar.',
              '7-8. Aylar (Hız ve Mesafe)',
              'Uzun koşular: Haftada bir gün, 25-30 km.',
              'Tempo koşuları: Orta mesafede (10-15 km) hızlı tempo koşuları.',
              'Interval antrenmanları: 800-1000 m interval koşular.',
              'Kuvvet ve plyometrik çalışmalar: Bacak ve core odaklı düşük ağırlıkta kuvvet çalışmaları.',
              '9. Ay (Toparlanma ve Mesafe Koruma)',
              'Düşük yoğunlukta uzun koşular: Mesafe korumak amacıyla, haftada bir gün 20-25 km.',
              'Dinlenme koşuları: Haftada 2 gün, hafif tempoda 8-10 km.',
              'Esneklik ve mobilite çalışmaları toparlanma için artırılır.',
            ],
          ),
          _buildTrainingCard(
            context,
            '3. Yarışma Dönemi (10-12. Aylar)',
            'Bu dönemde yarış hızına ve dayanıklılığa odaklanılarak en yüksek performansa ulaşılması hedeflenir.',
            [
              '10-11. Aylar (Yarış Hızı ve Performans Geliştirme)',
              'Uzun mesafe koşuları: Haftada bir gün 30-35 km, yarış temposunda.',
              'Tempo koşuları: 10-15 km yarış hızında koşular.',
              'Interval çalışmaları: 400-800 m’lik hız çalışmaları.',
              'Esneklik ve toparlanma çalışmaları: Her antrenmandan sonra esneme ve soğuma.',
              '12. Ay (Dinlenme ve Yarış Hazırlığı)',
              'Yoğunluk azaltılır: Haftada 1-2 hafif tempo koşusu (5-10 km).',
              'Esneklik ve toparlanma çalışmaları yoğunlaştırılır.',
              'Yarış öncesi dinlenme ve zihinsel hazırlığa odaklan.',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard(
    BuildContext context,
    String title,
    String description,
    List<String> details,
  ) {
    return Card(
      color: const Color.fromARGB(255, 0, 64, 255), // Orange color for the cards
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color inside the card
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            for (var detail in details)
              Text(
                detail,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 255, 255), // Slightly lighter text for details
                ),
              ),
          ],
        ),
      ),
    );
  }
}
