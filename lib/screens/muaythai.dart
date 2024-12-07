import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MuayThaiTrainingProgramPage extends StatelessWidget {
  const MuayThaiTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 42, 255), // Ana renk
        title: Text(
          'Muay Thai Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          MonthCard(
            month: 'Ocak',
            trainingPlan: const {
              'Focus': 'Temel Teknikler ve Kombinasyonlar',
              'Points': [
                'Temel duruş, diz ve dirsek teknikleri çalışması',
                'Jab, cross, hook, uppercut, diz ve dirsek kombinasyonları',
                'Savunma teknikleri (bloklar ve kaçışlar)',
                'Esneklik artırıcı çalışmalara odaklanma',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: const {
              'Focus': 'Hız ve Dayanıklılık',
              'Points': [
                'Hızlı yumruklar ve tekmelerle hız çalışmaları',
                'Kum torbası çalışmaları ile hız geliştirme',
                'Interval antrenmanları ile dayanıklılık artırma',
                'Çift bacak hareketleri ile hız geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: const {
              'Focus': 'Koordinasyon ve Ayak Hareketleri',
              'Points': [
                'Ayak koordinasyonu ve hareketlilik çalışmaları',
                'Çift yönlü hareketler ve savunma-hücum geçişleri',
                'Hızlı ve etkili ayak hareketleri geliştirme',
                'Saldırı ve savunma arasında hızla geçiş yapabilme',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: const {
              'Focus': 'Fiziksel Dayanıklılık ve Kuvvet',
              'Points': [
                'Koşu, bisiklet ve interval dayanıklılık çalışmaları',
                'Kum torbası ile kuvvet artırma çalışmaları',
                'Bacak ve core güçlendirme egzersizleri',
                'Dayanıklılığı artırmaya yönelik yüksek yoğunluklu çalışmalara odaklanma',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: const {
              'Focus': 'Teknik ve Kombinasyon Geliştirme',
              'Points': [
                'Jab, cross, hook, uppercut, diz ve dirsek teknikleri',
                'Daha kompleks kombinasyonlarla hız çalışmaları',
                'Zihinsel odaklanma ve koordinasyon geliştirme',
                'Çift bacak hareketleri ve teknik kombinasyonlar',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: const {
              'Focus': 'Yarışma Hazırlığı ve Strateji',
              'Points': [
                'Rakip analizi ve strateji oluşturma',
                'Yarışma kurallarına uygun teknik çalışmaları',
                'Saldırı sonrası savunma stratejileri geliştirme',
                'Çift torba ile hız ve dayanıklılık çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: const {
              'Focus': 'Saldırı ve Savunma Teknikleri',
              'Points': [
                'Savunma blokları ve kaçış teknikleri',
                'Saldırı sonrası kontra ataklar',
                'Çift bacak hareketleri ile teknik geliştirme',
                'Kum torbası çalışmaları ile hız ve kuvvet artırma',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: const {
              'Focus': 'Fiziksel Güç ve Esneklik',
              'Points': [
                'Esneklik artırıcı çalışmalara odaklanma',
                'Ağırsiklet ve güçlendirme çalışmaları',
                'Hızlı tempo ve yüksek yoğunluklu antrenmanlar',
                'Ayak hareketleri ve teknik geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: const {
              'Focus': 'Zihinsel Hazırlık ve Hızlı Tepki',
              'Points': [
                'Zihinsel odaklanma ve strateji oluşturma',
                'Tepki sürelerini kısaltmaya yönelik çalışmaları',
                'Hızlı refleks çalışmaları',
                'Düşük yoğunluklu hız artırma çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: const {
              'Focus': 'Yarışma Hazırlığı ve Teknik Pratik',
              'Points': [
                'Gerçek maç simülasyonları',
                'Rakip analizi ve karşı saldırı stratejileri',
                'Hızlı ve etkili tekme kombinasyonları',
                'Savunma ve saldırı kombinasyonları',
              ]
            },
          ),
          MonthCard(
            month: 'Kasım',
            trainingPlan: const {
              'Focus': 'Performans Değerlendirmesi ve Teknik İyileştirme',
              'Points': [
                'Yarışma sonrası teknik hataların gözden geçirilmesi',
                'Performans analizi ve gelişim raporu',
                'Vücut sağlığı ve iyileştirme teknikleri',
                'Teknik hataların düzeltilmesi ve yeni kombinasyonlar',
              ]
            },
          ),
          MonthCard(
            month: 'Aralık',
            trainingPlan: const {
              'Focus': 'Genel Fiziksel Toparlanma ve Yıl Sonu Değerlendirmesi',
              'Points': [
                'Fiziksel iyileşme ve toparlanma egzersizleri',
                'Zihinsel rahatlama ve toparlanma',
                'Tekrar gözden geçirme ve gelecekteki hedeflere odaklanma',
                'Yeni yıl için başlangıç tekniklerini belirleme',
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

  // ignore: prefer_const_constructors_in_immutables
  MonthCard({super.key, 
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


