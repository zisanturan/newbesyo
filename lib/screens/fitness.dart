import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessTrainingProgramPage extends StatelessWidget {
  const FitnessTrainingProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // U18 renk kodu
        title: Text(
          'Yıllık Fitness Antrenman Programı',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          TrainingQuarterCard(
            quarter: '1. Çeyrek (Ocak - Mart)',
            focus: 'Temel Kuvvet ve Dayanıklılık',
            points: [
              'Temel kuvvet çalışmaları (squats, deadlifts, bench press)',
              'Kardiyo dayanıklılığı (koşu, bisiklet, interval antrenman)',
              'Dinamik esneme ve core güçlendirme',
            ],
          ),
          TrainingQuarterCard(
            quarter: '2. Çeyrek (Nisan - Haziran)',
            focus: 'Çeviklik ve Patlayıcı Kuvvet',
            points: [
              'Hız ve çeviklik çalışmaları (koni drilleri, hız artırma)',
              'Plyometrik egzersizler (box jumps, burpees, jump squats)',
              'Yüksek yoğunluklu interval antrenman (HIIT)',
            ],
          ),
          TrainingQuarterCard(
            quarter: '3. Çeyrek (Temmuz - Eylül)',
            focus: 'Dayanıklılık ve Core Güçlendirme',
            points: [
              'Uzun süreli dayanıklılık çalışmaları (uzun mesafe koşular, yüzme, bisiklet)',
              'Core güçlendirme (plank, Russian twists, leg raises)',
              'Esneklik çalışmaları (statik esneme, yoga)',
            ],
          ),
          TrainingQuarterCard(
            quarter: '4. Çeyrek (Ekim - Aralık)',
            focus: 'Yüksek Yoğunluklu Antrenmanlar ve İleri Teknikler',
            points: [
              'Yüksek yoğunluklu interval antrenmanlar (sprintler, kettlebell swings)',
              'Anaerobik dayanıklılık çalışmaları',
              'Ağırsız çalışmalar (TRX, direnç bantları)',
            ],
          ),
        ],
      ),
    );
  }
}

class TrainingQuarterCard extends StatelessWidget {
  final String quarter;
  final String focus;
  final List<String> points;

  const TrainingQuarterCard({super.key, 
    required this.quarter,
    required this.focus,
    required this.points,
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
              quarter,
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 64, 255),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Odak Noktaları:',
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              focus,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 64, 255),
              ),
            ),
            const SizedBox(height: 12),
            ...points.map((point) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '• $point',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
