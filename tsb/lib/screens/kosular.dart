import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KosularPage extends StatelessWidget {
  const KosularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Atletizm - Koşular Yıllık Plan',
          style: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Using cards to display each month's plan
            buildMonthCard("1. Ay - Başlangıç Dayanıklılık Koşuları", [
              "Hedef: Hafif tempolu dayanıklılık kazanımı ve düzenli bir koşu alışkanlığı oluşturmak.",
              "• Haftada 3 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Çarşamba, Cuma: 20-25 dakika hafif tempo koşu.",
              "• 3. ve 4. Haftalar: Pazartesi, Çarşamba, Cuma: 25-30 dakika hafif tempo koşu.",
            ]),
            buildMonthCard("2. Ay - Dayanıklılık Artırma", [
              "Hedef: Mesafeyi artırarak kalp ve kas dayanıklılığını geliştirme.",
              "• Haftada 3 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Çarşamba, Cuma: 30-35 dakika hafif tempo koşu.",
              "• 3. ve 4. Haftalar: Pazartesi, Çarşamba, Cuma: 35-40 dakika hafif tempo koşu.",
            ]),
            buildMonthCard("3. Ay - Süreklilik ve Tempolu Koşular", [
              "Hedef: Daha uzun koşularla kas dayanıklılığı ve temposu artırmak.",
              "• Haftada 3 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Çarşamba: 40 dakika hafif tempo.",
              "• Cuma: 30 dakika orta tempo koşu.",
              "• 3. ve 4. Haftalar: Pazartesi, Çarşamba: 45 dakika hafif tempo.",
              "• Cuma: 35 dakika orta tempo koşu.",
            ]),
            buildMonthCard("4. Ay - Tempo ve Mesafe Artırma", [
              "Hedef: Hem mesafeyi hem de tempoyu artırarak dayanıklılığı pekiştirme.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 45 dakika hafif tempo.",
              "• Çarşamba, Cumartesi: 30 dakika orta tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 50 dakika hafif tempo.",
              "• Çarşamba, Cumartesi: 35 dakika orta tempo.",
            ]),
            buildMonthCard("5. Ay - Hız Kazanma ve Interval Çalışmaları", [
              "Hedef: Interval koşularla hız ve patlayıcı güç geliştirme.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 30 dakika hafif tempo.",
              "• Çarşamba: 1 dakika hızlı koşu, 2 dakika yavaş koşu x 5 set.",
              "• Cumartesi: 40 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 35 dakika hafif tempo.",
              "• Çarşamba: 1 dakika hızlı koşu, 1 dakika yavaş koşu x 6 set.",
              "• Cumartesi: 45 dakika hafif tempo.",
            ]),
            buildMonthCard("6. Ay - Interval Çalışmalar ve Mesafe Artırma", [
              "Hedef: Daha uzun mesafe koşuları ve interval dayanıklılığını geliştirme.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 50 dakika hafif tempo.",
              "• Çarşamba: 2 dakika hızlı koşu, 2 dakika yavaş koşu x 5 set.",
              "• Cumartesi: 60 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 55 dakika hafif tempo.",
              "• Çarşamba: 2 dakika hızlı koşu, 1 dakika yavaş koşu x 6 set.",
              "• Cumartesi: 60-65 dakika hafif tempo.",
            ]),
            buildMonthCard("7. Ay - Hız ve Dayanıklılık Geliştirme", [
              "Hedef: Hem hız hem de dayanıklılığı geliştirmeye odaklanmak.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 60 dakika hafif tempo.",
              "• Çarşamba: 3 dakika hızlı koşu, 2 dakika yavaş koşu x 5 set.",
              "• Cumartesi: 65 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 65 dakika hafif tempo.",
              "• Çarşamba: 3 dakika hızlı koşu, 1 dakika yavaş koşu x 6 set.",
              "• Cumartesi: 70 dakika hafif tempo.",
            ]),
            buildMonthCard("8. Ay - Tempo Artışı ve Interval Çeşitlendirme", [
              "Hedef: Interval çalışmalarında süre ve yoğunluk artışı.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 65 dakika hafif tempo.",
              "• Çarşamba: 4 dakika hızlı koşu, 2 dakika yavaş koşu x 5 set.",
              "• Cumartesi: 70 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 70 dakika hafif tempo.",
              "• Çarşamba: 4 dakika hızlı koşu, 1 dakika yavaş koşu x 6 set.",
              "• Cumartesi: 75 dakika hafif tempo.",
            ]),
            buildMonthCard("9. Ay - Mesafe Artırımı ve Güçlenme", [
              "Hedef: Daha uzun mesafelerde dayanıklılığı artırmak.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 75 dakika hafif tempo.",
              "• Çarşamba: 5 dakika hızlı koşu, 2 dakika yavaş koşu x 5 set.",
              "• Cumartesi: 80 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 80 dakika hafif tempo.",
              "• Çarşamba: 5 dakika hızlı koşu, 1 dakika yavaş koşu x 6 set.",
              "• Cumartesi: 85 dakika hafif tempo.",
            ]),
            buildMonthCard("10. Ay - Hız ve Interval Yoğunluğu", [
              "Hedef: Kısa mesafede hız ve interval dayanıklılığını pekiştirme.",
              "• Haftada 4 Gün Koşu",
              "• 1. ve 2. Haftalar: Pazartesi, Perşembe: 70 dakika hafif tempo.",
              "• Çarşamba: 1 dakika hızlı koşu, 1 dakika yürüyüş x 10 set.",
              "• Cumartesi: 75 dakika hafif tempo.",
              "• 3. ve 4. Haftalar: Pazartesi, Perşembe: 75 dakika hafif tempo.",
              "• Çarşamba: 1 dakika hızlı koşu, 1 dakika yürüyüş x 12 set.",
              "• Cumartesi: 80 dakika hafif tempo.",
            ]),
            buildMonthCard("11. Ay - Mesafe ve Hız Koruma", [
              "Hedef: Dayanıklılığı koruyarak mevcut kondisyonu sabitleme.",
              "• Haftada 3 Gün Koşu",
              "• Her Hafta: Pazartesi: 60 dakika hafif tempo.",
              "• Çarşamba: 5 dakika hızlı koşu, 2 dakika yavaş koşu x 4 set.",
              "• Cumartesi: 70 dakika hafif tempo.",
            ]),
            buildMonthCard("12. Ay - Hafif Koşular ve Dinlenme", [
              "Hedef: Sezon sonunda vücudu dinlendirerek toparlanma sağlamak.",
              "• Haftada 2 Gün Koşu",
              "• Haftalık: Pazartesi: 30 dakika hafif tempo.",
              "• Çarşamba: 30 dakika hafif tempo.",
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildMonthCard(String monthTitle, List<String> tasks) {
    return Card(
      color: const Color.fromARGB(255, 0, 26, 255),
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monthTitle,
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            for (var task in tasks)
              Text(
                task,
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
