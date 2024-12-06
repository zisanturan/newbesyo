import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiskAtmaPage extends StatelessWidget {
  const DiskAtmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disk Atma Yıllık Planı'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildMonthCard(
            "1. Ay – Hazırlık Dönemi: Dayanıklılık ve Temel Kuvvet Kazanımı",
            [
              "Pazartesi: Dayanıklılık Koşusu: 30 dakika hafif tempolu koşu.",
              "Pazartesi: Genel Kuvvet Antrenmanı: 3 set x 15 tekrar.",
              "Salı: Dinlenme",
              "Çarşamba: Disk Atma Tekniği: Düşük ağırlıklı diskle temel teknik çalışmaları.",
              "Çarşamba: Çekirdek Kuvvet Antrenmanı: 3 set x 20 tekrar.",
              "Perşembe: Ağırlık Antrenmanı: 3 set x 12 tekrar.",
              "Cuma: Dayanıklılık Koşusu: 20-30 dakika tempo koşu.",
              "Cumartesi: Dinlenme",
              "Pazar: Disk Atma Tekniği ve Hız Antrenmanı: Yarım ağırlıkla hızlı dönüş çalışmaları.",
            ],
          ),
          buildMonthCard(
            "2. Ay – Hazırlık Dönemi: Dayanıklılık ve Kuvvetin Artırılması",
            [
              "Pazartesi: Dayanıklılık Koşusu: 35-40 dakika, düşük tempo.",
              "Pazartesi: Genel Kuvvet Antrenmanı: 3 set x 15 tekrar.",
              "Salı: Dinlenme",
              "Çarşamba: Disk Atma Tekniği: Teknik odaklı dönüş çalışmaları.",
              "Çarşamba: Çekirdek Kuvvet Antrenmanı: 4 set x 20 tekrar.",
              "Perşembe: Ağırlık Antrenmanı: 3 set x 12 tekrar.",
              "Cuma: Interval Koşu: 1 dakika koşu, 1 dakika yürüyüş.",
              "Cumartesi: Dinlenme",
              "Pazar: Disk Atma Tekniği ve Hız Çalışması: Hızlı dönüş çalışmaları.",
            ],
          ),
          buildMonthCard(
            "3. Ay – Hazırlık Dönemi: Kuvvetin Pekiştirilmesi ve Teknik Odaklı Çalışmalar",
            [
              "Pazartesi: Dayanıklılık Koşusu: 30-35 dakika, temposu artırılmış.",
              "Pazartesi: Genel Kuvvet Antrenmanı: 3 set x 12 tekrar.",
              "Salı: Dinlenme",
              "Çarşamba: Disk Atma Tekniği: Yarım ağırlıkla dönüş ve atış teknikleri.",
              "Çarşamba: Çekirdek Kuvvet Antrenmanı: 4 set x 25 tekrar.",
              "Perşembe: Ağırlık Antrenmanı: Patlayıcı kuvvet çalışması.",
              "Cuma: Dayanıklılık Antrenmanı: 20-25 dakika tempolu koşu.",
              "Cumartesi: Dinlenme",
              "Pazar: Disk Atma Tekniği: Orta ağırlıklı diski kullanarak hızlı dönüş ve atış teknikleri.",
            ],
          ),
          buildMonthCard(
            "4. Ay – Gelişim Dönemi: Patlayıcı Kuvvet ve Hız Gelişimi",
            [
              "Pazartesi ve Çarşamba: Patlayıcı Kuvvet Antrenmanı: 4 set x 8 tekrar.",
              "Salı: Dinlenme",
              "Perşembe: Disk Atma Tekniği: Yüksek ağırlıklı diskle dönüş çalışmaları.",
              "Cuma: Dayanıklılık Antrenmanı: 15-20 dakika yüksek tempolu koşu.",
              "Cumartesi: Genel Kuvvet Antrenmanı: 3 set x 10 tekrar.",
            ],
          ),
          buildMonthCard(
            "5. Ay – Gelişim Dönemi: Patlayıcı Kuvvet ve Hızın Geliştirilmesi",
            [
              "Pazartesi ve Çarşamba: Patlayıcı Kuvvet Çalışması: 4 set x 10 tekrar.",
              "Salı: Dinlenme",
              "Perşembe: Disk Atma Tekniği: Yüksek hızla dönüş ve atış.",
              "Cuma: Dayanıklılık Antrenmanı: 10 dakika koşu ve tempolu yürüme.",
              "Cumartesi: Dinlenme",
              "Pazar: Disk Atma ve Teknik Çalışma: Hafif ağırlıkla dönüş ve hıza odaklanma.",
            ],
          ),
          buildMonthCard(
            "6. Ay – Gelişim Dönemi: Hız ve Patlayıcı Kuvvetin Maksimuma Çıkarılması",
            [
              "Pazartesi ve Çarşamba: Patlayıcı Kuvvet Antrenmanı: 4 set x 8 tekrar.",
              "Pazartesi ve Çarşamba: Hız Antrenmanı: 5 set 20-30 metre sprint.",
              "Salı: Dinlenme",
              "Perşembe: Disk Atma Tekniği: Düşük ağırlıklı diskle hızlı dönüş ve kısa mesafeli atış.",
              "Cuma: Interval Koşu: 1 dakika hızlı koşu, 1 dakika yürüyüş.",
              "Cumartesi: Genel Kuvvet Antrenmanı: 3 set x 10 tekrar.",
              "Pazar: Dinlenme veya Hafif Teknik Çalışma.",
            ],
          ),
          buildMonthCard(
            "7. Ay – Spesifik Hazırlık Dönemi: Teknik ve Hız Odaklı Çalışma",
            [
              "Pazartesi ve Çarşamba: Disk Atma Tekniği ve Hız Çalışması: 4 set x 10 tekrar.",
              "Salı: Dinlenme",
              "Perşembe: Pliometrik Antrenman: 3 set x 10 tekrar.",
              "Cuma: Sprint Çalışması: 6 set 15-20 metre hız.",
              "Cumartesi: Genel Kuvvet Antrenmanı: 3 set x 8 tekrar.",
              "Pazar: Disk Atma Tekniği ve Hız Çalışması: Teknik odaklı hız çalışmaları.",
            ],
          ),
          buildMonthCard(
            "8. Ay – Spesifik Hazırlık Dönemi: Teknik Gelişimi ve Hızın Korunması",
            [
              "Pazartesi ve Çarşamba: Disk Atma Çalışması: 10-12 teknik atış.",
              "Pazartesi ve Çarşamba: Çekirdek Kuvvet Antrenmanı: 4 set x 20 tekrar.",
              "Salı: Dinlenme",
              "Perşembe: Pliometrik Antrenman: 3 set x 10 tekrar.",
              "Cuma: Hız ve Çabukluk Çalışması: 6 set 10-15 metre sprint.",
              "Cumartesi: Dinlenme",
              "Pazar: Disk Atma Çalışması: Farklı ağırlıklarla dönüş teknikleri.",
            ],
          ),
          // Continue adding for other months...
        ],
      ),
    );
  }

  Widget buildMonthCard(String monthTitle, List<String> tasks) {
    return Card(
      color: const Color.fromARGB(255, 0, 47, 255), // Orange color
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monthTitle,
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            for (var task in tasks)
              Text(
                task,
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
