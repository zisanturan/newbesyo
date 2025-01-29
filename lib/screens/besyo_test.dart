import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'test1_page.dart';
import 'test2_page.dart';
import 'test3_page.dart';

class BesyoTestPage extends StatelessWidget {
  const BesyoTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BESYO Testleri',
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Neon mavi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'BESYO Testlerine Hoş Geldiniz!',
              style: GoogleFonts.roboto(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 64, 255),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Aşağıdaki testlerden birini seçin:',
              style: GoogleFonts.roboto(
                fontSize: 18,
                color: const Color(0xFF424242), // Nötr gri ton
              ),
            ),
            const SizedBox(height: 20),
            _buildTestCard(
              context,
              'Test 1: Bilgi Testi',
              'Bu test, bilgi ölçen bir sınavdır.',
              () {
                // Test 1'e yönlendirecek sayfa
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BesyoInfoQuizApp()),
                );
              },
            ),
            const SizedBox(height: 10),
            _buildTestCard(
              context,
              'Test 2: Beden Eğitimi Bilgisi',
              'Bu test, beden eğitimi bilgilerinizi ölçer.',
              () {
                // Test 2'ye yönlendirecek sayfa
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PeInfoQuizApp()),
                );
              },
            ),
            const SizedBox(height: 10),
            _buildTestCard(
              context,
              'Test 3: Spor Psikolojisi',
              'Bu test, spor psikolojisi hakkındaki bilginizi ölçer.',
              () {
                // Test 3'e yönlendirecek sayfa
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SportsPsychologyQuizApp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Test kartı yapısı
  Widget _buildTestCard(
    BuildContext context,
    String title,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      shadowColor: const Color.fromARGB(255, 0, 64, 255), // Neon mavi gölge
      color: const Color.fromRGBO(251, 37, 118, 1), // Neon pembe
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Beyaz yazı
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 245, 245, 245), // Açık beyaz
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Test 1 Sayfası
class Test1Page extends StatelessWidget {
  const Test1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fiziksel Yetenek Testi',
          style: GoogleFonts.roboto(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Center(
        child: const Text('Fiziksel Yetenek Testi İçeriği Buraya Gelecek'),
      ),
    );
  }
}

// Test 2 Sayfası
class Test2Page extends StatelessWidget {
  const Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beden Eğitimi Bilgisi Testi',
          style: GoogleFonts.roboto(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Center(
        child: const Text('Beden Eğitimi Bilgisi Testi İçeriği Buraya Gelecek'),
      ),
    );
  }
}

// Test 3 Sayfası
class Test3Page extends StatelessWidget {
  const Test3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spor Psikolojisi Testi',
          style: GoogleFonts.roboto(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Center(
        child: const Text('Spor Psikolojisi Testi İçeriği Buraya Gelecek'),
      ),
    );
  }
}

final List<Map<String, dynamic>> testQuestions = [
  // Spor Bilimleri Temel Bilgiler
  {
    'question': 'Aşağıdakilerden hangisi aerobik egzersizin faydalarından değildir?',
    'options': [
      'Kalp-damar sistemini güçlendirir',
      'Kas kütlesinde hızlı artış sağlar',
      'Metabolizmayı hızlandırır',
      'Bağışıklık sistemini güçlendirir'
    ],
    'correctAnswer': 1,
    'explanation': 'Kas kütlesindeki hızlı artış anaerobik egzersizlerle sağlanır. Aerobik egzersizler dayanıklılık ve kardiyovasküler sistem üzerinde etkilidir.'
  },
  {
    'question': 'Hangi vitamin eksikliği sporcularda kemik sağlığını doğrudan etkiler?',
    'options': ['A Vitamini', 'B Vitamini', 'D Vitamini', 'E Vitamini'],
    'correctAnswer': 2,
    'explanation': 'D vitamini, kalsiyum emilimini sağlayarak kemik sağlığını korur. Özellikle sporcular için kemik yoğunluğu açısından kritik öneme sahiptir.'
  },

  // Spor Fizyolojisi
  {
    'question': 'Maksimal oksijen tüketimi (VO2 Max) aşağıdakilerden hangisinin göstergesidir?',
    'options': [
      'Kas kuvveti',
      'Aerobik kapasite',
      'Esneklik',
      'Reaksiyon zamanı'
    ],
    'correctAnswer': 1,
    'explanation': 'VO2 Max, bir kişinin aerobik kapasitesinin en önemli göstergesidir ve dayanıklılık performansıyla doğrudan ilişkilidir.'
  },
  {
    'question': 'Anaerobik eşik (AT) nedir?',
    'options': [
      'Maksimum kalp atım hızı',
      'Laktik asit birikiminin başladığı yoğunluk seviyesi',
      'Minimum oksijen tüketimi',
      'Maksimum kas gücü'
    ],
    'correctAnswer': 1,
    'explanation': 'Anaerobik eşik, egzersiz sırasında laktik asit birikiminin başladığı ve aerobik metabolizmadan anaerobik metabolizmaya geçişin olduğu noktadır.'
  },

  // Spor Anatomisi
  {
    'question': 'Quadriceps femoris kası hangi hareketi gerçekleştirir?',
    'options': [
      'Diz fleksiyonu',
      'Diz ekstansiyonu',
      'Kalça fleksiyonu',
      'Ayak bileği plantarfleksiyonu'
    ],
    'correctAnswer': 1,
    'explanation': 'Quadriceps femoris, diz ekleminin ana ekstansör kasıdır ve dizi düz pozisyona getirmekten sorumludur.'
  },
  {
    'question': 'Hangi kas grubu "core" bölgesinde yer almaz?',
    'options': [
      'Rectus abdominis',
      'Transversus abdominis',
      'Gastrocnemius',
      'Internal oblique'
    ],
    'correctAnswer': 2,
    'explanation': 'Gastrocnemius baldır kası olup, core (merkez) bölgesinde yer almaz. Diğer seçenekler karın ve gövde kaslarıdır.'
  },

  // Spor Biyomekaniği
  {
    'question': 'Bir sporcunun koşu sırasındaki adım uzunluğunu etkileyen faktör hangisi değildir?',
    'options': [
      'Bacak uzunluğu',
      'Kas kuvveti',
      'Göz rengi',
      'Eklem esnekliği'
    ],
    'correctAnswer': 2,
    'explanation': 'Göz rengi, biyomekanik performansı etkileyen bir faktör değildir. Diğer seçenekler koşu adım uzunluğunu doğrudan etkiler.'
  },

  // Spor Beslenmesi
  {
    'question': 'Sporcu beslenmesinde karbonhidratların temel görevi nedir?',
    'options': [
      'Kas onarımı',
      'Enerji sağlama',
      'Hormon üretimi',
      'Vitamin depolama'
    ],
    'correctAnswer': 1,
    'explanation': 'Karbonhidratlar, egzersiz sırasında kullanılan birincil enerji kaynağıdır ve glikojen olarak depolanır.'
  },

  // Antrenman Bilgisi
  {
    'question': 'Süperkompenzasyon teorisine göre, aşağıdakilerden hangisi doğrudur?',
    'options': [
      'Performans sürekli artar',
      'İyileşme dönemi performansı düşürür',
      'Toparlanma sonrası performans başlangıç seviyesinin üzerine çıkar',
      'Antrenman şiddeti sürekli aynı kalmalıdır'
    ],
    'correctAnswer': 2,
    'explanation': 'Süperkompenzasyon, uygun dinlenme sonrası performansın başlangıç seviyesinin üzerine çıkması prensibidir.'
  },

  // Spor Yaralanmaları
  {
    'question': 'Aşağıdakilerden hangisi "RICE" protokolünün bileşenlerinden biri değildir?',
    'options': [
      'Rest (Dinlenme)',
      'Ice (Buz)',
      'Running (Koşu)',
      'Elevation (Yükseltme)'
    ],
    'correctAnswer': 2,
    'explanation': 'RICE protokolü: Rest (Dinlenme), Ice (Buz), Compression (Kompresyon) ve Elevation (Yükseltme) kelimelerinin baş harflerinden oluşur.'
  },
];
