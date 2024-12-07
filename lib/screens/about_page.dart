import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hakkımızda',
          style: GoogleFonts.poppins(
            color: const Color(0xFFF7F9F2), // Light text color for contrast
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 210, 242), // Updated AppBar color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Section
            _buildSectionTitle('TSB Hakkında'),
            const SizedBox(height: 8),
            _buildSectionContent(
                'TSB,  beden eğitimi ve spor alanında eğitim vermek amacıyla kurulmuştur. '
                'Spor kültürünü yaymak ve gençleri bu alanda yetiştirmek için çeşitli programlar ve eğitimler sunmaktadır.'),
            const SizedBox(height: 20),

            // BESYO Nedir Section
            _buildSectionTitle('BESYO Nedir?'),
            const SizedBox(height: 8),
            _buildSectionContent(
                'BESYO, Beden Eğitimi ve Spor Yüksekokulu anlamına gelir ve beden eğitimi, spor bilimleri ve spor yönetimi alanlarında öğrencilere eğitim veren bir yükseköğretim birimidir. '
                'TSB olarak, sporun önemini ve fiziksel eğitimin yararlarını topluma yaymayı amaçlıyoruz.'),
            const SizedBox(height: 20),

            // BESYO Courses Section
            _buildSectionTitle('BESYO Kurslarımız'),
            const SizedBox(height: 8),
            _buildSectionContent(
                'TSB, beden eğitimi ve spor konularında öğrencilerin gelişimini destekleyen çeşitli kurslar sunmaktadır. '
                'Kurslarımızda bireylerin fiziksel ve zihinsel gelişimine katkı sağlıyoruz.'),
            const SizedBox(height: 20),

            // Competitions Section
            _buildSectionTitle('Kulüp Olarak Girdiğimiz Yarışlar'),
            const SizedBox(height: 8),
            _buildSectionContent(
                'TSB olarak katıldığımız yarışlar ve etkinlikler sayesinde öğrencilerimize rekabetçi spor deneyimi sağlıyoruz. '
                'Her yıl katıldığımız yarışlar arasında üniversitelerarası turnuvalar, bölgesel yarışmalar ve ulusal şampiyonalar bulunmaktadır.'),
            const SizedBox(height: 20),

            // Branches Section
            _buildSectionTitle('Şubelerimiz'),
            const SizedBox(height: 8),
            _buildCityList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFED2D3F), // Title color updated
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Card(
      color: const Color(0xFFF4F6F9),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          content,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black87,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildCityList() {
    List<String> cities = [
      'İstanbul',
      'Ankara',
      'İzmir',
      'Bursa',
      'Adana',
      'Antalya',
      'Konya',
      'Gaziantep',
      'Kayseri',
      'Sakarya'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cities.map((city) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '• $city şehrinde şubemiz bulunmaktadır.',
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
          ),
        );
      }).toList(),
    );
  }
}
