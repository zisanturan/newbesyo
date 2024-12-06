import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KarateTrainingProgramPage extends StatelessWidget {
  const KarateTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 254), // Ana renk
        title: Text(
          'Karate Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          MonthCard(
            month: 'Ocak',
            trainingPlan: {
              'Focus': 'Temel Teknikler ve Duruşlar',
              'Points': [
                'Temel duruşlar: Zenkutsu Dachi, Kokutsu Dachi, Heiko Dachi',
                'Tekme ve yumruk teknikleri: Mae Geri, Oi Zuki, Gyaku Zuki',
                'Duruş ve denge çalışmaları',
                'Tekrar çalışarak hareketlerin doğru yapılması',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: {
              'Focus': 'Hız ve Koordinasyon',
              'Points': [
                'Hızlı tekme ve yumruk çalışmaları',
                'Kum torbası ile hız geliştirme',
                'Koordinasyon ve hız üzerine çalışma',
                'Çift yönlü hareketler ile hız arttırma',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: {
              'Focus': 'Savunma Teknikleri',
              'Points': [
                'Bloklama teknikleri: Age Uke, Gedan Barai, Uchi Uke',
                'Savunma ve karşı saldırı kombinasyonları',
                'Rakip analizi ve savunma stratejileri',
                'Savunma çalışmalarıyla hız ve tepki süreleri geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: {
              'Focus': 'Kumite (Savaş)',
              'Points': [
                'Savaş sırasında doğru duruşlar ve hareketler',
                'Rakip analizine dayalı strateji geliştirme',
                'Kumite simülasyonları ve hız pratikleri',
                'Kumite tekniklerinin doğru uygulanması',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: {
              'Focus': 'Dayanıklılık ve Kuvvet',
              'Points': [
                'Aerobik dayanıklılık çalışmaları',
                'Bacak, kol ve core güçlendirme egzersizleri',
                'Fiziksel dayanıklılığı artıran yüksek yoğunluklu antrenmanlar',
                'Esneklik artırıcı çalışmalar',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: {
              'Focus': 'Teknik Kombinasyonlar',
              'Points': [
                'Farklı teknik kombinasyonları ile hız ve güç artırma',
                'Çift bacak ve zıt yönlü hareketler',
                'Kum torbası ve pad çalışmaları ile kombinasyonlar',
                'Stratejik düşünme ve doğru teknik seçimi',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: {
              'Focus': 'Savunma ve Saldırı Stratejileri',
              'Points': [
                'Saldırı ve savunma kombinasyonları',
                'Daha agresif tekniklerle mücadele',
                'Saldırı stratejilerinin geliştirilmesi',
                'Rakip analizi yaparak savunma teknikleri',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: {
              'Focus': 'Çift Teknik Çalışmalar',
              'Points': [
                'Çift bacaklı tekme ve yumruk kombinasyonları',
                'Hız ve koordinasyonu artırmaya yönelik çift yönlü hareketler',
                'Savunma ve saldırı stratejilerinin çift kombinasyonlarla uygulanması',
                'Çift bacakla tekme hızını geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: {
              'Focus': 'Zihinsel Odaklanma ve Hazırlık',
              'Points': [
                'Zihinsel dayanıklılığı artırma teknikleri',
                'Yarışma öncesi strateji ve stres yönetimi',
                'Konsantrasyon artırıcı çalışmalar',
                'Rakip analizine dayalı odaklanma ve strateji oluşturma',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: {
              'Focus': 'Kumite ve Performans',
              'Points': [
                'Gerçek savaş simülasyonları',
                'Savaş stratejileri ve rakip analizi',
                'Çift yönlü saldırı ve savunma kombinasyonları',
                'Performans izleme ve geri bildirimle geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Kasım',
            trainingPlan: {
              'Focus': 'Yarışma Hazırlığı',
              'Points': [
                'Yarışma öncesi tam vücut kontrolü',
                'Fiziksel ve zihinsel hazırlık çalışmaları',
                'Maç simülasyonları ve teknik pratikler',
                'Yarışma ortamı ve stratejileri üzerine çalışmalar',
              ]
            },
          ),
          MonthCard(
            month: 'Aralık',
            trainingPlan: {
              'Focus': 'Yıl Sonu Değerlendirmesi ve Planlama',
              'Points': [
                'Yıl boyunca yapılan çalışmaların gözden geçirilmesi',
                'Yeni hedefler belirlenmesi',
                'Yarışma sonrası toparlanma ve iyileşme çalışmaları',
                'Teknik hataların değerlendirilmesi ve düzeltilmesi',
              ]
            },
          ),
        ],
      ),
    );
  }
}

class MonthCard extends StatelessWidget {
  final String month;
  final Map<String, dynamic> trainingPlan;

  const MonthCard({super.key, 
    required this.month,
    required this.trainingPlan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              month,
              style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Focus: ${trainingPlan['Focus']}',
              style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Column(
              children: List.generate(trainingPlan['Points']?.length ?? 0, (index) {
                return Text(
                  '- ${trainingPlan['Points'][index]}',
                  style: GoogleFonts.lato(fontSize: 16),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
