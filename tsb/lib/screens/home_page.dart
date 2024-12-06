import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Google Fonts package for font styling

// Import the pages for each course topic
import 'askeri_okullar_page.dart';
import 'pmyo_pomem_page.dart';
import 'spor_lisesi_page.dart';
import 'bc_kamp_page.dart';
import 'tyt_ders_page.dart';
// Import the SportsCoursesPage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Beyaz arka plan
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection(context),
            const SizedBox(height: 20),
            _buildAboutSection(),
            const SizedBox(height: 20),
            const Text(
              'Öne Çıkan Kurslar',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 64, 255), // Neon mavi
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

  Widget _buildHeaderSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hoş Geldiniz!',
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w700, // Bold text
            color: const Color.fromARGB(255, 0, 64, 255), // Neon mavi
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'TSB ile spor kariyerinizi bir adım öne taşıyın!',
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: const Color(0xFF424242), // Nötr gri ton
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 64, 255),
                Color.fromARGB(255, 255, 0, 128)
              ], // Neon mavi ve neon açık mavi
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: GestureDetector(
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
            color: const Color.fromARGB(255, 0, 64, 255), // Neon mavi
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'TSB, spor ve beden eğitimi alanında kariyer yapmak isteyen öğrencilere en kapsamlı hazırlık kurslarını sunan bir kurumdur. '
          'Amacımız, spor kültürünü yaymak ve gençleri bu alanda profesyonel hayata en iyi şekilde hazırlamaktır.',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xFF424242), // Nötr gri
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
          'Askeri Okullar',
          'Askeri okullara hazırlık programı',
          Icons.military_tech,
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AskeriOkullarPage()));
          },
        ),
        _buildCourseCard(
          context,
          'PMYO-POMEM',
          'Polislik sınavlarına hazırlık',
          Icons.shield,
          () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PMYOPOMEMPage()));
          },
        ),
        _buildCourseCard(
          context,
          'Spor Lisesi',
          'Spor lisesine hazırlık',
          Icons.school,
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SporLisesiPage()));
          },
        ),
        _buildCourseCard(
          context,
          'BC Kamp',
          'BC kamp programı',
          Icons.sports,
          () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BCKampPage()));
          },
        ),
        _buildCourseCard(
          context,
          'TYT Ders',
          'TYT ders desteği',
          Icons.book,
          () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TYTDersPage()));
          },
        ),
      ],
    );
  }

  Widget _buildCourseCard(BuildContext context, String title, String subtitle,
      IconData icon, VoidCallback onTap) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 0, 64, 255), // Neon mavi gölge
      color: const Color.fromARGB(255, 0, 153, 255), // Neon pembe
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  color: const Color.fromRGBO(251, 37, 118, 1),
                  size: 40), // Neon açık mavi
              const SizedBox(height: 10),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Beyaz yazı
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(
                      255, 245, 245, 245), // Neon açık mavi
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 64, 255), // Neon mavi
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'Bizi Takip Edin!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // Beyaz yazı
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
