import 'package:besyocity/screens/bc_kamp_page.dart';
import 'package:besyocity/screens/urunler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// Import the pages for each course topic
import 'askeri_okullar_page.dart';
import 'pmyo_pomem_page.dart';
import 'spor_lisesi_page.dart';
import 'persona.dart';
import 'besyo_test.dart';
import 'besyo_exam_register.dart';
import 'city_based_courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSlider(),
            const SizedBox(height: 20),
            _buildHeaderSection(context),
            const SizedBox(height: 20),
            _buildAboutSection(),
            const SizedBox(height: 20),
            const Text(
              'Öne Çıkan Kurslar',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 64, 255), // Neon blue
              ),
            ),
            const SizedBox(height: 10),
            _buildCoursesGrid(context),
            const SizedBox(height: 20),
            _buildFooterSection(),
          ],
        ),
      ),
    );
  }

  // Slider Section
  Widget _buildSlider() {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PageView(
            children: [
              _buildSliderItem('assets/images/sl1.png', ''),
              _buildSliderItem('assets/images/sl2.png', ''),
              _buildSliderItem('assets/images/sl3.png', ''),
              _buildSliderItem('assets/images/sl4.png', ''),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 95,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliderItem(String imagePath, String caption) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hoş Geldiniz!',
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 0, 64, 255),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'TSB ile spor kariyerinizi bir adım öne taşıyın!',
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: const Color(0xFF424242),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CityBasedCoursesPage(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 64, 255),
                  Color.fromARGB(255, 255, 0, 128),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                'Türkiye genelindeki en iyi spor hazırlık kurslarına göz atın!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'TSB Hakkında',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 64, 255),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'TSB, spor ve beden eğitimi alanında kariyer yapmak isteyen öğrencilere en kapsamlı hazırlık kurslarını sunan bir kurumdur. '
          'Amacımız, spor kültürünü yaymak ve gençleri bu alanda profesyonel hayata en iyi şekilde hazırlamaktır.',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xFF424242),
          ),
        ),
      ],
    );
  }

  Widget _buildCoursesGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildCourseCard(
          context,
          'Besyo Test',
          'Besyo Testler',
          Icons.sports,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BesyoTestPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'BC Kamp',
          'BC kamp programı',
          Icons.sports,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BCKampPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'Ürünler',
          'ürünler',
          Icons.sports,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductScreen()),
          ),
        ),
        _buildCourseCard(
          context,
          'Kişiye Özel Program',
          'Çalışma Programı',
          Icons.book,
          () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PersonalTrainingFormPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'Askeri Okullar',
          'Askeri okullara hazırlık programı',
          Icons.military_tech,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AskeriOkullarPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'PMYO-POMEM',
          'Polislik sınavlarına hazırlık',
          Icons.shield,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PMYOPOMEMPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'Spor Lisesi',
          'Spor lisesine hazırlık',
          Icons.school,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SporLisesiPage()),
          ),
        ),
        _buildCourseCard(
          context,
          'TYT Deneme',
          'Sınavı Kayıt',
          Icons.assignment,
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BesyoExamRegister()),
          ),
        ),
      ],
    );
  }

  Widget _buildCourseCard(BuildContext context, String title, String subtitle,
      IconData icon, VoidCallback onTap) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 0, 64, 255),
      color: const Color.fromARGB(255, 0, 64, 255),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Color.fromRGBO(251, 37, 118, 1), size: 40),
              const SizedBox(height: 10),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xFFE6E6E6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooterSection() {
    return Column(
      children: [
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () => _launchInstagram(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 64, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                'Bizi Takip Edin!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _launchInstagram() async {
    final Uri url = Uri.parse('https://www.instagram.com/turkiyesporbilimleri');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Bağlantı açılamıyor: $url';
    }
  }
}

class VideoPageApp {
}
