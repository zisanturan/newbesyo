import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KickboxingTrainingProgramPage extends StatelessWidget {
  const KickboxingTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 43, 255), // Ana renk
        title: Text(
          'Kickbox Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          MonthCard(
            month: 'Ocak',
            trainingPlan: {
              'Focus': 'Temel Teknikler ve Kombinasyonlar',
              'Points': [
                'Temel duruş ve el pozisyonları çalışması',
                'Jab, cross, hook, uppercut kombinasyonları',
                'Savunma tekniklerine giriş (blok ve kaçış)',
                'Esneklik artırıcı çalışmalara odaklanma',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: {
              'Focus': 'Hız ve Dayanıklılık Çalışmaları',
              'Points': [
                'Saldırı hızını artırmak için çalışmalar',
                'Kum torbası çalışmaları ile hız geliştirme',
                'Kısa mesafe koşu ve interval egzersizleri',
                'Çift el ve bacak hareketlerinin senkronize edilmesi',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: {
              'Focus': 'Koordinasyon ve Ayak Hareketleri',
              'Points': [
                'Çift yönlü ayak hareketleri ve koordinasyon',
                'Savunma ve saldırı arasında hızlı geçişler',
                'Hızlı ayak hareketleri ile teknik çalışmaları birleştirme',
                'Ayak koordinasyonu ve dengenin geliştirilmesi',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: {
              'Focus': 'Fiziksel Dayanıklılık ve Kuvvet',
              'Points': [
                'Koşu, bisiklet ve interval dayanıklılık çalışmaları',
                'Ağırsiklet ve kum torbası ile kuvvet çalışmaları',
                'Bacak ve core güçlendirme egzersizleri',
                'Fiziksel dayanıklılığı artırmaya yönelik programlar',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: {
              'Focus': 'Teknik ve Kombinasyon Geliştirme',
              'Points': [
                'Saldırı ve savunma teknikleri üzerine yoğunlaşma',
                'Kompleks kombinasyonlar ile hız çalışmaları',
                'Zihinsel odaklanma çalışmaları',
                'Çift bacak hareketleri ve teknik kombinasyonlar',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: {
              'Focus': 'Yarışma Hazırlığı ve Strateji',
              'Points': [
                'Rakip analizi ve strateji oluşturma',
                'Yarışma kurallarına uygun teknik çalışmaları',
                'Savunma sonrası saldırı taktikleri geliştirme',
                'Çift torba ile hız ve dayanıklılık çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: {
              'Focus': 'Saldırı ve Savunma Teknikleri',
              'Points': [
                'Savunma blokları ve kaçış teknikleri',
                'Saldırı sonrası hızlı kontra ataklar',
                'Hızlı yumruk ve tekme kombinasyonları',
                'Kum torbası ile hız ve kuvvet artırma',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: {
              'Focus': 'Fiziksel Güç ve Esneklik',
              'Points': [
                'Esneklik artırıcı çalışmalara odaklanma',
                'Ağırsiklet ve güçlendirme çalışmaları',
                'Yüksek tempo ve hız artırıcı antrenmanlar',
                'Çift bacak hareketleri ile hız geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: {
              'Focus': 'Zihinsel Hazırlık ve Hızlı Tepki',
              'Points': [
                'Zihinsel odaklanma ve strateji oluşturma',
                'Tepki sürelerini kısaltmaya yönelik çalışmaları',
                'Hızlı refleks ve koordinasyon egzersizleri',
                'Düşük yoğunluklu hız çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: {
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
            trainingPlan: {
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
            trainingPlan: {
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
              style:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Focus: ${trainingPlan['Focus']}',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Column(
              children:
                  List.generate(trainingPlan['Points']?.length ?? 0, (index) {
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
