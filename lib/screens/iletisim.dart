import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İletişim',
          style: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor:
            const Color.fromARGB(255, 0, 64, 255), // Main theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bize ulaşmanın en kolay yolu:',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.instagram,
                color: Color(0xFF833AB4), // Instagram color
                size: 30.0,
              ),
              title: Text(
                'Instagram',
                style: GoogleFonts.poppins(fontSize: 16.0),
              ),
              onTap: () async {
                const url = 'https://instagram.com/turkiyesporbilimleri';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  debugPrint("Couldn't launch Instagram.");
                }
              },
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue, // Twitter color
                size: 30.0,
              ),
              title: Text(
                'Twitter',
                style: GoogleFonts.poppins(fontSize: 16.0),
              ),
              onTap: () async {
                const url = 'https://twitter.com/turkiyesporbilimleri';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  debugPrint("Couldn't launch Twitter.");
                }
              },
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.globe,
                color: Colors.green, // Website color
                size: 30.0,
              ),
              title: Text(
                'Websitesi',
                style: GoogleFonts.poppins(fontSize: 16.0),
              ),
              onTap: () async {
                const url = 'https://yourwebsite.com';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  debugPrint("Couldn't launch website.");
                }
              },
            ),
            const SizedBox(height: 32.0),
            Text(
              'Bize WhatsApp üzerinden de ulaşabilirsiniz:',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () async {
                const whatsappUrl = 'https://wa.me/905064668387';
                if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
                  await launchUrl(Uri.parse(whatsappUrl));
                } else {
                  debugPrint("Couldn't launch WhatsApp.");
                }
              },
              icon: const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
                size: 24.0,
              ),
              label: Text(
                'WhatsApp İle İletişime Geç',
                style: GoogleFonts.poppins(fontSize: 16.0),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // WhatsApp color
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                textStyle: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            Text(
              'Uygulama hakkında daha fazla bilgi almak veya destek almak için yukarıdaki yöntemlerle bizimle iletişime geçebilirsiniz.',
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
