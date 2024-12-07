import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxingTrainingProgramPage extends StatelessWidget {
  const BoxingTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Ana renk
        title: Text(
          'Boks Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          MonthCard(
            month: 'Ocak',
            trainingPlan: {
              'Focus': 'Temel Teknikler ve Duruş Çalışmaları',
              'Points': [
                'Temel duruş ve el pozisyonları çalışması',
                'Jab, cross, hook tekniklerine giriş',
                'Esneklik artırıcı egzersizler',
                'Hızlı ayak hareketleri ve koordinasyon çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: {
              'Focus': 'Savunma Teknikleri ve Kombinasyonlar',
              'Points': [
                'Savunma tekniklerine (blok, kaçış, vücut hareketi) giriş',
                'Jab ve cross kombinasyonları',
                'Saldırı sonrası savunma ve karşılık verme',
                'Kum torbası çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: {
              'Focus': 'Saldırı ve Hız Geliştirme',
              'Points': [
                'Saldırı hızını artırmak için çalışılacak teknikler',
                'Hızlı yumruk kombinasyonları',
                'Hızlı ayak hareketleriyle savunma ve saldırı',
                'Çift el ile hızlı hareketler ve hız geliştirme',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: {
              'Focus': 'Fiziksel Dayanıklılık ve Kuvvet Çalışmaları',
              'Points': [
                'Fiziksel dayanıklılığı artırıcı koşu ve interval çalışmaları',
                'Ağırsiklet ve boks torbası ile kuvvet çalışmaları',
                'Core ve bacak güçlendirme egzersizleri',
                'Zihinsel dayanıklılığı artırma çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: {
              'Focus': 'Yarışma Stratejileri ve Kumiteye Hazırlık',
              'Points': [
                'Kumiteye yönelik strateji oluşturma',
                'Rakip analizi ve buna göre strateji belirleme',
                'Hızlı reaksiyon ve esneklik artırıcı teknikler',
                'Yarışma kuralları ve etiketine yönelik eğitim',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: {
              'Focus': 'Yarışma Hazırlığı ve Performans Testi',
              'Points': [
                'Gerçek maç simülasyonları',
                'Fiziksel ve mental performans değerlendirmesi',
                'Rakip karşısında teknik ve strateji uygulamaları',
                'Esneklik ve hız çalışmaları',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: {
              'Focus': 'Zihinsel Hazırlık ve Savaşma Teknikleri',
              'Points': [
                'Zihinsel odaklanma çalışmaları',
                'Savaşma stratejileri üzerine çalışmalara devam',
                'Rakip ile kumite pratikleri',
                'Kum torbası ve hız torbası ile çalışmalara devam',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: {
              'Focus': 'Yarışma Sonrası İyileşme ve Analiz',
              'Points': [
                'Yarışma sonrası fizyoterapi ve iyileşme çalışmaları',
                'Performans analizi ve gelişim raporu',
                'Yarışma sonrası dinlenme ve yeniden toparlanma',
                'Vücut bakımına yönelik egzersizler',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: {
              'Focus': 'Hızlı Tepki ve Koordinasyon Çalışmaları',
              'Points': [
                'Görsel ve işitsel tepki hızını artırma',
                'Hızlı refleks ve koordinasyon egzersizleri',
                'Saldırı ve savunma arasındaki geçişin hızlandırılması',
                'Çift el ve bacak hareketlerinin entegrasyonu',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: {
              'Focus': 'Fiziksel Dayanıklılık ve Savaşma Gücü',
              'Points': [
                'Dayanıklılığı artıran kuvvet çalışmaları',
                'Kum torbası ve boks torbası ile yoğun antrenmanlar',
                'Boks tekniklerinin dayanıklılık ile birleştirilmesi',
                'Beden gücünü artırıcı çalışmalara odaklanma',
              ]
            },
          ),
          MonthCard(
            month: 'Kasım',
            trainingPlan: {
              'Focus': 'Saldırı ve Savunma Kombinasyonları',
              'Points': [
                'Saldırı ve savunma kombinasyonları üzerinde çalışmak',
                'Karmaşık kombinasyonlar ve hızlı geçiş teknikleri',
                'Saldırı sonrası hızlı savunma ve karşılık verme',
                'Kum torbası ile uygulamalı çalışmalar',
              ]
            },
          ),
          MonthCard(
            month: 'Aralık',
            trainingPlan: {
              'Focus': 'Yarışma Sonrası Yeniden Başlangıç ve Teknik Düzeltmeler',
              'Points': [
                'Teknik hataların gözden geçirilmesi',
                'Esneklik ve hız üzerine çalışmalara devam',
                'Beden sağlığına yönelik iyileştirici egzersizler',
                'Zihinsel rahatlama ve toparlanma çalışmaları',
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

