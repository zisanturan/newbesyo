import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BCKampPage extends StatelessWidget {
  const BCKampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BC Kamp',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Başlık
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Antrenman Videoları',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 64, 255),
                ),
              ),
            ),
            // Video kartları
            ...instagramVideos.map((video) => _buildVideoCard(context, video)),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoCard(BuildContext context, Map<String, String> video) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video başlığı
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              video['title']!,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Video önizleme resmi
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  video['thumbnail']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                // Play butonu
                IconButton(
                  icon: const Icon(
                    Icons.play_circle_fill,
                    size: 64,
                    color: Colors.white,
                  ),
                  onPressed: () => _openInstagramVideo(video['url']!),
                ),
              ],
            ),
          ),
          // Video açıklaması
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              video['description']!,
              style: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  void _openInstagramVideo(String url) async {
    // Instagram uygulaması için deep link
    final instagramUrl = Uri.parse(url);
    // Yedek olarak web tarayıcı için URL
    final webUrl = Uri.parse('$url/');

    try {
      // Önce Instagram uygulamasını açmayı dene
      if (await canLaunchUrl(instagramUrl)) {
        await launchUrl(instagramUrl, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(webUrl)) {
        // Instagram uygulaması yoksa web tarayıcıda aç
        await launchUrl(webUrl);
      } else {
        throw 'Video açılamıyor';
      }
    } catch (e) {
      debugPrint('Video açılırken hata oluştu: $e');
    }
  }
}

// Instagram video verileri
final List<Map<String, String>> instagramVideos = [
  {
    'title': 'Besyo Parkur Antrenmanı',
    'thumbnail': 'assets/images/parkur.jpg',
    'url': 'https://www.instagram.com/reel/_b80OwWkE',
    'description': 'Besyo parkur hazırlık antrenmanı ve teknik çalışmalar.',
  },
  {
    'title': 'Koordinasyon Çalışması',
    'thumbnail': 'assets/images/besyo.jpg',
    'url': 'https://www.instagram.com/reel/_yqn6CDkx',
    'description': 'Koordinasyon ve çabukluk geliştirme antrenmanı.',
  },
  {
    'title': 'Testler',
    'thumbnail': 'assets/images/test.jpg',
    'url': 'https://www.instagram.com/reel/_hMIj_g_D',
    'description': 'Bilgi ölçme sınavları.',
  },
];
