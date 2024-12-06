import 'package:flutter/material.dart';

class UzunAtlamaPage extends StatelessWidget {
  const UzunAtlamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uzun Atlama Yıllık Plan'),
        backgroundColor:
            const Color.fromARGB(255, 8, 0, 255), // Neon Orange Header
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _buildMonthCard(
            context,
            '1. Ay - Temel Dayanıklılık ve Kuvvet',
            '• Haftada 4 Gün Antrenman\n• Pazartesi ve Perşembe (Genel Kuvvet)\n• Squat: 4 set x 10 tekrar\n• Deadlift: 3 set x 8 tekrar\n• Bench Press: 4 set x 8 tekrar\n• Plank ve Russian Twist: 3 set x 30 saniye\n• Çarşamba ve Cumartesi (Denge ve Esneklik)\n• Tek ayak üzerinde denge çalışması: 3 set x 30 saniye\n• Esneklik çalışmaları (hamstring, kalça ve omuz)',
          ),
          _buildMonthCard(
            context,
            '2. Ay - Patlayıcı Güç ve Hız Gelişimi',
            '• Haftada 4 Gün Antrenman\n• Pazartesi ve Perşembe (Patlayıcı Güç)\n• Box Jump: 4 set x 8 tekrar\n• Plyometric Lunges: 3 set x 10 tekrar\n• Power Clean: 3 set x 6 tekrar\n• Çarşamba ve Cumartesi (Hız ve Teknik)\n• 30 metre sprint: 5 set\n• Düşük hızda uzun atlama teknik çalışmaları (adımlama ve sıçrama tekniği)',
          ),
          _buildMonthCard(
            context,
            '3. Ay - Teknik Gelişim ve Hız',
            '• Haftada 5 Gün Antrenman\n• Pazartesi, Çarşamba, Cuma (Teknik Çalışması)\n• Adımlama çalışmaları ve sıçrama tekniği (tekrar odaklı)\n• Hızlanma ve adım sayısına odaklanma\n• Salı ve Cumartesi (Patlayıcı Güç ve Hız)\n• 40 metre sprint: 5 set\n• Depth Jump: 3 set x 8 tekrar',
          ),
          _buildMonthCard(
            context,
            '4. Ay - Teknik ve Çekirdek Güç Çalışması',
            '• Haftada 5 Gün Antrenman\n• Pazartesi, Çarşamba, Cuma (Teknik Çalışması)\n• Sıçrama teknikleri ve adım düzeni\n• Salı ve Cumartesi (Çekirdek Güç)\n• Russian Twist: 3 set x 20 tekrar\n• Medicine Ball ile yan rotasyon: 3 set x 15 tekrar\n• Side Plank: 3 set x 30 saniye',
          ),
          _buildMonthCard(
            context,
            '5. Ay - Hız ve Patlayıcı Güç Odaklı Çalışmalar',
            '• Haftada 4 Gün Antrenman\n• Pazartesi ve Perşembe (Patlayıcı Güç)\n• Squat Jump: 4 set x 10 tekrar\n• Medicine Ball Yukarı Fırlatma: 3 set x 10 tekrar\n• Sprint (20-30 metre): 5 set\n• Çarşamba ve Cumartesi (Teknik ve Denge)\n• Denge çalışmaları ve sıçrama pozisyonunda duruş',
          ),
          _buildMonthCard(
            context,
            '6. Ay - Teknik ve Kuvvet Çalışmaları',
            '• Haftada 5 Gün Antrenman\n• Pazartesi, Çarşamba, Cuma (Teknik Çalışma)\n• Tam adımlama ve sıçrama çalışmaları\n• Salı ve Cumartesi (Kuvvet Çalışması)\n• Deadlift: 4 set x 8 tekrar\n• Lunge: 4 set x 10 tekrar\n• Shoulder Press: 3 set x 10 tekrar',
          ),
          _buildMonthCard(
            context,
            '7. Ay - Yarışma Hazırlık Dönemi',
            '• Haftada 5 Gün Antrenman\n• Pazartesi, Çarşamba, Cuma (Tam Teknik Çalışma)\n• Yarışma temposunda uzun atlama çalışmaları (tam adımlama ve hız)\n• Salı ve Cumartesi (Hız ve Patlayıcı Güç)\n• Sprint: 10-20 metre x 5 set\n• Plyometric çalışmaları (Box Jump ve Tuck Jump)',
          ),
          _buildMonthCard(
            context,
            '8. Ay - Patlayıcı Güç ve Teknik Gelişimi',
            '• Haftada 5 Gün Antrenman\n• Pazartesi, Çarşamba, Cuma (Teknik Çalışma)\n• Tam adımlama ve sıçrama teknik çalışmaları\n• Salı ve Cumartesi (Güç Çalışması)\n• Clean and Jerk: 4 set x 6 tekrar\n• Overhead Press: 4 set x 8 tekrar',
          ),
          _buildMonthCard(
            context,
            '9. Ay - Teknik Stabilizasyon ve Hız Koruma',
            '• Haftada 4 Gün Antrenman\n• Pazartesi ve Perşembe (Teknik Çalışma)\n• Düşük hızda teknik tekrarlar ve sıçrama pozisyonları\n• Çarşamba ve Cumartesi (Hız Antrenmanı)\n• Orta mesafeli koşu ve plyometric çalışmalar',
          ),
          _buildMonthCard(
            context,
            '10. Ay - Yarışma Dönemi için Tam Antrenman',
            '• Haftada 4 Gün Antrenman\n• Pazartesi ve Perşembe (Tam Teknik Çalışma)\n• Yarışma temposunda tam uzun atlama\n• Çarşamba ve Cumartesi (Hız Koruma)\n• Sprint çalışmaları ve hafif patlayıcı kuvvet egzersizleri',
          ),
          _buildMonthCard(
            context,
            '11. Ay - Hafif Teknik Çalışmalar ve Dinlenme',
            '• Haftada 3 Gün Antrenman\n• Hafif teknik çalışmalar, denge çalışmaları ve kısa mesafe koşular',
          ),
          _buildMonthCard(
            context,
            '12. Ay - Dinlenme ve Hafif Çalışmalar',
            '• Haftada 3 Gün Antrenman\n• Hafif tempo koşu, esneme çalışmaları ve hafif teknik tekrarlar',
          ),
        ],
      ),
    );
  }

  Widget _buildMonthCard(BuildContext context, String title, String details) {
    return Card(
      color: const Color.fromARGB(255, 0, 34, 255), // Orange card color
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          details,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
