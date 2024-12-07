import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwimmingTrainingProgramPage extends StatelessWidget {
  const SwimmingTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 0, 255), // Ana renk
        title: Text(
          'Yüzme Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          AgeGroupCard(
            ageGroup: '11-12 Yaş Grubu',
            months: [
              "Ocak - Mart",
              "Nisan - Haziran",
              "Temmuz - Eylül",
              "Ekim - Aralık"
            ],
            trainingPlans: [
              // 1. Çeyrek
              {
                'Focus': 'Temel Yüzme Teknikleri ve Dayanıklılık',
                'Points': [
                  'Yüzme tekniklerinin temel öğrenilmesi (kısa mesafe)',
                  'İleriye doğru yüzme hareketlerinin geliştirilmesi',
                  'Temel nefes alma teknikleri',
                  'Temel hız geliştirme çalışmaları'
                ]
              },
              // 2. Çeyrek
              {
                'Focus': 'Hız ve Dayanıklılık Gelişimi',
                'Points': [
                  'Kuvvet geliştiren egzersizler (kollar, bacaklar)',
                  'Daha uzun mesafelerde dayanıklılık arttırma',
                  'Esneklik çalışmalarına odaklanma',
                  'Hızlı toparlanma için düşük yoğunluklu kardiyo'
                ]
              },
              // 3. Çeyrek
              {
                'Focus': 'İleri Seviye Yüzme Teknikleri',
                'Points': [
                  'Hızlı yüzme teknikleri (kısa mesafelerde hız)',
                  'Kuvvet artırıcı egzersizler',
                  'İleri seviyede nefes alma ve hız kontrolü',
                  'Esneklik ve koordinasyon çalışmaları'
                ]
              },
              // 4. Çeyrek
              {
                'Focus': 'Performans Artırma ve Strateji Geliştirme',
                'Points': [
                  'Yarış tekniklerinin uygulanması',
                  'Zihinsel dayanıklılık ve odaklanma',
                  'Tüm yüzme stillerinde hız ve dayanıklılık',
                  'Karmaşık hız çalışmaları'
                ]
              }
            ],
          ),
          AgeGroupCard(
            ageGroup: '13-14 Yaş Grubu',
            months: [
              "Ocak - Mart",
              "Nisan - Haziran",
              "Temmuz - Eylül",
              "Ekim - Aralık"
            ],
            trainingPlans: [
              // 1. Çeyrek
              {
                'Focus': 'Temel Yüzme Teknikleri ve Dayanıklılık',
                'Points': [
                  'Yüzme tekniklerinin temel öğrenilmesi (kısa mesafe)',
                  'İleriye doğru yüzme hareketlerinin geliştirilmesi',
                  'Temel nefes alma teknikleri',
                  'Hızlı toparlanma için düşük yoğunluklu kardiyo'
                ]
              },
              // 2. Çeyrek
              {
                'Focus': 'Hız ve Dayanıklılık Gelişimi',
                'Points': [
                  'Kuvvet geliştiren egzersizler (kollar, bacaklar)',
                  'Daha uzun mesafelerde dayanıklılık arttırma',
                  'Esneklik çalışmalarına odaklanma',
                  'Hızlı toparlanma için düşük yoğunluklu kardiyo'
                ]
              },
              // 3. Çeyrek
              {
                'Focus': 'İleri Seviye Yüzme Teknikleri',
                'Points': [
                  'Hızlı yüzme teknikleri (kısa mesafelerde hız)',
                  'Kuvvet artırıcı egzersizler',
                  'İleri seviyede nefes alma ve hız kontrolü',
                  'Esneklik ve koordinasyon çalışmaları'
                ]
              },
              // 4. Çeyrek
              {
                'Focus': 'Performans Artırma ve Strateji Geliştirme',
                'Points': [
                  'Yarış tekniklerinin uygulanması',
                  'Zihinsel dayanıklılık ve odaklanma',
                  'Tüm yüzme stillerinde hız ve dayanıklılık',
                  'Karmaşık hız çalışmaları'
                ]
              }
            ],
          ),
          AgeGroupCard(
            ageGroup: '15-17 Yaş Grubu',
            months: [
              "Ocak - Mart",
              "Nisan - Haziran",
              "Temmuz - Eylül",
              "Ekim - Aralık"
            ],
            trainingPlans: [
              // 1. Çeyrek
              {
                'Focus': 'Temel Yüzme Teknikleri ve Dayanıklılık',
                'Points': [
                  'Yüzme tekniklerinin temel öğrenilmesi (kısa mesafe)',
                  'İleriye doğru yüzme hareketlerinin geliştirilmesi',
                  'Temel nefes alma teknikleri',
                  'Temel hız geliştirme çalışmaları'
                ]
              },
              // 2. Çeyrek
              {
                'Focus': 'Hız ve Dayanıklılık Gelişimi',
                'Points': [
                  'Kuvvet geliştiren egzersizler (kollar, bacaklar)',
                  'Daha uzun mesafelerde dayanıklılık arttırma',
                  'Esneklik çalışmalarına odaklanma',
                  'Hızlı toparlanma için düşük yoğunluklu kardiyo'
                ]
              },
              // 3. Çeyrek
              {
                'Focus': 'İleri Seviye Yüzme Teknikleri',
                'Points': [
                  'Hızlı yüzme teknikleri (kısa mesafelerde hız)',
                  'Kuvvet artırıcı egzersizler',
                  'İleri seviyede nefes alma ve hız kontrolü',
                  'Esneklik ve koordinasyon çalışmaları'
                ]
              },
              // 4. Çeyrek
              {
                'Focus': 'Performans Artırma ve Strateji Geliştirme',
                'Points': [
                  'Yarış tekniklerinin uygulanması',
                  'Zihinsel dayanıklılık ve odaklanma',
                  'Tüm yüzme stillerinde hız ve dayanıklılık',
                  'Karmaşık hız çalışmaları'
                ]
              }
            ],
          ),
          AgeGroupCard(
            ageGroup: '18 ve Üzeri Yaş Grubu',
            months: [
              "Ocak - Mart",
              "Nisan - Haziran",
              "Temmuz - Eylül",
              "Ekim - Aralık"
            ],
            trainingPlans: [
              // 1. Çeyrek
              {
                'Focus': 'Temel Yüzme Teknikleri ve Dayanıklılık',
                'Points': [
                  'Yüzme tekniklerinin temel öğrenilmesi (kısa mesafe)',
                  'İleriye doğru yüzme hareketlerinin geliştirilmesi',
                  'Temel nefes alma teknikleri',
                  'Temel hız geliştirme çalışmaları'
                ]
              },
              // 2. Çeyrek
              {
                'Focus': 'Hız ve Dayanıklılık Gelişimi',
                'Points': [
                  'Kuvvet geliştiren egzersizler (kollar, bacaklar)',
                  'Daha uzun mesafelerde dayanıklılık arttırma',
                  'Esneklik çalışmalarına odaklanma',
                  'Hızlı toparlanma için düşük yoğunluklu kardiyo'
                ]
              },
              // 3. Çeyrek
              {
                'Focus': 'İleri Seviye Yüzme Teknikleri',
                'Points': [
                  'Hızlı yüzme teknikleri (kısa mesafelerde hız)',
                  'Kuvvet artırıcı egzersizler',
                  'İleri seviyede nefes alma ve hız kontrolü',
                  'Esneklik ve koordinasyon çalışmaları'
                ]
              },
              // 4. Çeyrek
              {
                'Focus': 'Performans Artırma ve Strateji Geliştirme',
                'Points': [
                  'Yarış tekniklerinin uygulanması',
                  'Zihinsel dayanıklılık ve odaklanma',
                  'Tüm yüzme stillerinde hız ve dayanıklılık',
                  'Karmaşık hız çalışmaları'
                ]
              }
            ],
          ),
        ],
      ),
    );
  }
}

class AgeGroupCard extends StatelessWidget {
  final String ageGroup;
  final List<String> months;
  final List<Map<String, dynamic>> trainingPlans;

  const AgeGroupCard({super.key, 
    required this.ageGroup,
    required this.months,
    required this.trainingPlans,
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
              ageGroup,
              style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              children: List.generate(trainingPlans.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${months[index]} - ${trainingPlans[index]['Focus']}',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ...List.generate(trainingPlans[index]['Points']?.length ?? 0, (pointIndex) {
                        return Text(
                          '- ${trainingPlans[index]['Points'][pointIndex]}',
                          style: GoogleFonts.lato(fontSize: 16),
                        );
                      }),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

