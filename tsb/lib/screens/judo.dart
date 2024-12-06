import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JudoTrainingProgramPage extends StatelessWidget {
  const JudoTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Ana renk
        title: Text(
          'Judo Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          MonthCard(
            month: 'Ocak',
            trainingPlan: {
              'Focus': 'Temel Judo Teknikleri ve Denge Çalışmaları',
              'Points': [
                'Temel tutuş teknikleri (Kumikata)',
                'Denge ve yer hareketleri çalışmaları',
                'Tek tek teknikler (O-soto-gari, Seoi-nage vb.)',
                'Esneklik artırıcı egzersizler',
              ]
            },
          ),
          MonthCard(
            month: 'Şubat',
            trainingPlan: {
              'Focus': 'Kumiteye Giriş ve Savunma Teknikleri',
              'Points': [
                'Rakip analizine dayalı savunma teknikleri',
                'Çift tutuşlardan savunma yapma',
                'Dönüş teknikleri (Ura-nage, O-goshi vb.)',
                'Hızlı tepki egzersizleri',
              ]
            },
          ),
          MonthCard(
            month: 'Mart',
            trainingPlan: {
              'Focus': 'Gelişmiş Tutuş ve Atış Teknikleri',
              'Points': [
                'Tutuş tekniklerinin hızlandırılması',
                'Gelişmiş atış teknikleri',
                'Rakibe karşı kontrol teknikleri',
                'Hızlı ve doğru tepki için uygulamalı antrenmanlar',
              ]
            },
          ),
          MonthCard(
            month: 'Nisan',
            trainingPlan: {
              'Focus': 'Yer Çalışmaları ve Savaşma Taktikleri',
              'Points': [
                'Yer dövüşü tekniklerinin geliştirilmesi',
                'Rakipten kurtulma teknikleri',
                'Savaşma stratejileri ve uygulamalı antrenmanlar',
                'Vücut kuvveti artırıcı çalışmalara başlama',
              ]
            },
          ),
          MonthCard(
            month: 'Mayıs',
            trainingPlan: {
              'Focus': 'Çift Tutuş ve Yüksek Hızda Atışlar',
              'Points': [
                'Çift tutuşlarda hızlı hareketler',
                'Yüksek hızda atış tekniklerinin yapılması',
                'Düşüş tekniklerinin hızlandırılması',
                'Esneklik artırıcı çalışmalara devam',
              ]
            },
          ),
          MonthCard(
            month: 'Haziran',
            trainingPlan: {
              'Focus': 'Rakip Analizi ve Kumite Stratejisi',
              'Points': [
                'Rakip analizine dayalı strateji çalışmaları',
                'Kumiteye yönelik hız ve doğruluk geliştirme',
                'Farklı tutuş ve atış kombinasyonları',
                'Strateji geliştirme ve mental hazırlık',
              ]
            },
          ),
          MonthCard(
            month: 'Temmuz',
            trainingPlan: {
              'Focus': 'Zihinsel Hazırlık ve Dayanıklılık Çalışmaları',
              'Points': [
                'Zihinsel odaklanma tekniklerinin geliştirilmesi',
                'Dayanıklılık artırıcı çalışmalara başlanması',
                'Yer dövüşü simülasyonları',
                'Çeşitli savunma tekniklerinin hızlı uygulanması',
              ]
            },
          ),
          MonthCard(
            month: 'Ağustos',
            trainingPlan: {
              'Focus': 'Yarışma Hazırlığı ve Test Çalışmaları',
              'Points': [
                'Rakip analizi ve uygulamalı testler',
                'Yarışma kurallarının gözden geçirilmesi',
                'Yarışma için strateji oluşturulması',
                'Fiziksel ve mental hazırlık için testler',
              ]
            },
          ),
          MonthCard(
            month: 'Eylül',
            trainingPlan: {
              'Focus': 'Uygulamalı Kumite ve Atış Teknikleri',
              'Points': [
                'Kumite tekniklerinin hızlı uygulanması',
                'Atışlar arasında geçiş yapma',
                'Rakip ile karşılıklı teknik uygulamaları',
                'Kumite stratejilerinin geliştirilmesi',
              ]
            },
          ),
          MonthCard(
            month: 'Ekim',
            trainingPlan: {
              'Focus': 'Yarışma Stratejileri ve Performans Gelişimi',
              'Points': [
                'Yarışma stratejileri üzerine çalışılmalı',
                'Yarışma öncesi performans analizleri',
                'Fiziksel ve mental dayanıklılığın geliştirilmesi',
                'Rakip stratejileri üzerine çalışılmalı',
              ]
            },
          ),
          MonthCard(
            month: 'Kasım',
            trainingPlan: {
              'Focus': 'Yarışma Sonrası Değerlendirme ve İyileşme',
              'Points': [
                'Yarışma sonrası analiz ve geri bildirim',
                'İyileşme süreci için vücut bakımı',
                'Düşüş ve yer hareketlerinin tekrar edilmesi',
                'Bedenin dayanıklılığını artırmaya yönelik egzersizler',
              ]
            },
          ),
          MonthCard(
            month: 'Aralık',
            trainingPlan: {
              'Focus': 'Kış Periyodunda Fiziksel Hazırlık',
              'Points': [
                'Fiziksel güç artırıcı çalışmalara devam',
                'Vücut dayanıklılığını artıran egzersizler',
                'Tekrar yapılması gereken tekniklerin gözden geçirilmesi',
                'Zihinsel ve bedensel rahatlama için yoga ve meditasyon',
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
