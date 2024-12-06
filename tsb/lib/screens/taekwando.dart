import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaekwondoTrainingProgramPage extends StatelessWidget {
  const TaekwondoTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Ana renk
        title: Text(
          'Taekwondo Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          MonthCard(
            month: 'Ocak',
            trainingPlan: {
              'Focus': 'Temel Teknikler ve Duruş',
              'Points': [
                'Temel duruş ve ayak pozisyonları',
                'Jab, cross, tekme ve savunma teknikleri',
                'Esneklik artırıcı çalışmalara odaklanma',
                'Yavaş tempolu teknik çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: {
              'Focus': 'Hız ve Koordinasyon',
              'Points': [
                'Hızlı tekme ve yumruklarla hız geliştirme',
                'Kum torbası ile hız çalışmaları',
                'Refleks ve koordinasyon geliştirmeye yönelik çalışmalar',
                'Çift yönlü hareketlerle hız çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: {
              'Focus': 'Savunma Teknikleri',
              'Points': [
                'Bloklama ve savunma tekniklerine odaklanma',
                'Kaçış teknikleri ve pozisyon değiştirme',
                'Zihinsel odaklanma ile savunma stratejileri',
                'Kum torbası çalışmaları ile savunma geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: {
              'Focus': 'Teknik Kombinasyonlar',
              'Points': [
                'Farklı kombinasyonlarla hız geliştirme',
                'Kum torbası çalışmaları ile kombinasyon pratikleri',
                'Çift bacak hareketleri ve esneklik çalışmaları',
                'Hızlı ve etkili tekme kombinasyonları',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: {
              'Focus': 'Dayanıklılık ve Kuvvet',
              'Points': [
                'Koşu, bisiklet ve interval dayanıklılık çalışmaları',
                'Bacak ve core güçlendirme egzersizleri',
                'Yüksek yoğunluklu antrenmanlarla dayanıklılık artırma',
                'Ağırsiklet ve kuvvet artırma çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: {
              'Focus': 'Saldırı ve Savunma Kombinasyonları',
              'Points': [
                'Saldırı ve savunma tekniklerinin kombinasyonu',
                'Çift yönlü hareketler ve geçişler',
                'Rakip analizi yaparak strateji oluşturma',
                'Yüksek tempolu saldırı ve savunma kombinasyonları',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: {
              'Focus': 'Yarışma Hazırlığı',
              'Points': [
                'Gerçek maç simülasyonları',
                'Rakip analizi ve karşı saldırı stratejileri',
                'Yarışma kurallarına uygun teknik çalışmaları',
                'Zihinsel odaklanma ve strateji oluşturma',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: {
              'Focus': 'Fiziksel Güç ve Esneklik',
              'Points': [
                'Esneklik artırıcı çalışmalara odaklanma',
                'Bacak kuvveti ve hız geliştirme',
                'Çift bacak teknikleri ile hız geliştirme',
                'Ağırsiklet ve dayanıklılık artırma çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: {
              'Focus': 'Zihinsel Hazırlık ve Odaklanma',
              'Points': [
                'Zihinsel odaklanma teknikleri',
                'Yarışma öncesi stres yönetimi',
                'Hızlı refleks ve tepki sürelerini azaltma çalışmaları',
                'Fiziksel iyileşme ve kas toparlanması',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: {
              'Focus': 'Teknik ve Kombinasyon Çalışmaları',
              'Points': [
                'Zihinsel strateji oluşturma',
                'Rakip analizine dayalı teknik geliştirme',
                'Yarışma simülasyonları ve pratik yapma',
                'Tekrar gözden geçirme ve teknik hataları düzeltme',
              ]
            },
          ),
          MonthCard(
            month: 'Kasım',
            trainingPlan: {
              'Focus': 'Performans Değerlendirmesi',
              'Points': [
                'Performans analizini yaparak teknik hataları düzeltme',
                'Yeni teknikler öğrenme ve çalışma',
                'Fiziksel iyileşme egzersizlerine odaklanma',
                'Zihinsel toparlanma ve odaklanma çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Aralık',
            trainingPlan: {
              'Focus': 'Yıl Sonu Değerlendirmesi ve Planlama',
              'Points': [
                'Yıl boyunca yapılan antrenmanları gözden geçirme',
                'Yeni yıl için hedefler belirleme',
                'Teknik ve fiziksel değerlendirme yapma',
                'Yarışma sonrası dinlenme ve toparlanma çalışmaları',
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
