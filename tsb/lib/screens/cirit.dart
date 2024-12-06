import 'package:flutter/material.dart';

class CiritAtmaPage extends StatelessWidget {
  const CiritAtmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cirit Atma Yıllık Planı'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Orange color
      ),
      body: ListView(
        children: [
          _buildMonthCard(context, '1. Ay - Temel Kuvvet ve Dayanıklılık', 'Temel kuvvet ve dayanıklılık çalışmalarına odaklanılacak.',
              [
                'Haftada 4 Gün Antrenman',
                'Pazartesi ve Perşembe (Genel Kuvvet)',
                'Çarşamba ve Cumartesi (Esneklik ve Denge)',
              ]),
          _buildMonthCard(context, '2. Ay - Kuvvet ve Patlayıcı Güç Gelişimi', 'Kasları patlayıcı güç antrenmanlarına hazırlama.',
              [
                'Haftada 4 Gün Antrenman',
                'Pazartesi ve Perşembe (Patlayıcı Güç)',
                'Çarşamba ve Cumartesi (Teknik Temelleri ve Denge)',
              ]),
          _buildMonthCard(context, '3. Ay - Teknik ve Koordinasyon Gelişimi', 'Cirit atma tekniği üzerinde çalışılacak.',
              [
                'Haftada 5 Gün Antrenman',
                'Pazartesi, Çarşamba, Cuma (Teknik Çalışma)',
                'Salı ve Cumartesi (Hız ve Patlayıcı Güç)',
              ]),
          _buildMonthCard(context, '4. Ay - Teknik ve Çekirdek Güç Çalışması', 'Çekirdek kaslarını güçlendirirken teknik beceri geliştirilecek.',
              [
                'Haftada 5 Gün Antrenman',
                'Pazartesi, Çarşamba, Cuma (Teknik Çalışma)',
                'Salı ve Cumartesi (Çekirdek Kuvvet)',
              ]),
          _buildMonthCard(context, '5. Ay - Hız ve Patlayıcı Güç Odaklı Çalışmalar', 'Patlayıcı güç ve hızı artırma çalışmaları.',
              [
                'Haftada 4 Gün Antrenman',
                'Pazartesi ve Perşembe (Patlayıcı Güç)',
                'Çarşamba ve Cumartesi (Teknik ve Denge)',
              ]),
          _buildMonthCard(context, '6. Ay - Teknik ve Kuvvet Çalışmaları', 'Atış hızını artırma ve teknik kusurları gidermek.',
              [
                'Haftada 5 Gün Antrenman',
                'Pazartesi, Çarşamba, Cuma (Teknik Çalışma)',
                'Salı ve Cumartesi (Kuvvet Çalışması)',
              ]),
          _buildMonthCard(context, '7. Ay - Yarışma Öncesi Hazırlık', 'Yarışma temposunda antrenman yapma.',
              [
                'Haftada 5 Gün Antrenman',
                'Pazartesi, Çarşamba, Cuma (Tam Teknik Çalışma)',
                'Salı ve Cumartesi (Hız ve Patlayıcı Güç)',
              ]),
          _buildMonthCard(context, '8. Ay - Patlayıcı Güç ve Teknik Gelişim', 'Maksimum patlayıcı güç ve teknik doğruluğu sağlama.',
              [
                'Haftada 5 Gün Antrenman',
                'Pazartesi, Çarşamba, Cuma (Teknik Çalışma)',
                'Salı ve Cumartesi (Güç Çalışması)',
              ]),
          _buildMonthCard(context, '9. Ay - Teknik Stabilizasyon ve Hız Koruma', 'Hızı koruyarak teknik istikrarı sağlama.',
              [
                'Haftada 4 Gün Antrenman',
                'Pazartesi ve Perşembe (Teknik Çalışma)',
                'Çarşamba ve Cumartesi (Hız Antrenmanı)',
              ]),
          _buildMonthCard(context, '10. Ay - Yarışma Dönemi Çalışmaları', 'Yarışma temposunda tam performans sağlama.',
              [
                'Haftada 4 Gün Antrenman',
                'Pazartesi ve Perşembe (Tam Teknik Çalışma)',
                'Çarşamba ve Cumartesi (Hız Koruma)',
              ]),
          _buildMonthCard(context, '11. Ay - Hafif Teknik ve Dinlenme', 'Yarışma öncesi hafif teknik tekrarları ve toparlanma.',
              [
                'Haftada 3 Gün Antrenman',
                'Hafif teknik çalışmalar, denge odaklı çalışmalar, kısa mesafe koşular ve esneme.',
              ]),
          _buildMonthCard(context, '12. Ay - Dinlenme ve Hafif Çalışmalar', 'Sezon sonunda vücudu toparlamak.',
              [
                'Haftada 3 Gün Antrenman',
                'Hafif tempo koşu, esneme çalışmaları ve hafif teknik tekrarlar.',
              ]),
        ],
      ),
    );
  }

  Widget _buildMonthCard(BuildContext context, String monthTitle, String description, List<String> details) {
    return Card(
      color: const Color.fromARGB(255, 0, 64, 255), // Orange card color
      margin: const EdgeInsets.all(8),
      child: ExpansionTile(
        title: Text(
          monthTitle,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(color: Colors.white),
        ),
        children: details
            .map((detail) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                  child: Text(detail, style: const TextStyle(color: Colors.white)),
                ))
            .toList(),
      ),
    );
  }
}
