import 'package:besyocity/screens/basu10.dart';
import 'package:besyocity/screens/basu14.dart';
import 'package:besyocity/screens/basu18.dart';
import 'package:besyocity/screens/basu8.dart';
import 'package:besyocity/screens/bocks.dart';
import 'package:besyocity/screens/cekic.dart';
import 'package:besyocity/screens/cirit.dart';
import 'package:besyocity/screens/disk.dart';
import 'package:besyocity/screens/engelkosulari.dart';
import 'package:besyocity/screens/fitness.dart';
import 'package:besyocity/screens/gulle.dart';
import 'package:besyocity/screens/judo.dart';
import 'package:besyocity/screens/karate.dart';
import 'package:besyocity/screens/kickbox.dart';
import 'package:besyocity/screens/maraton.dart';
import 'package:besyocity/screens/muaythai.dart';
import 'package:besyocity/screens/sirikla_atlama.dart';
import 'package:besyocity/screens/taekwando.dart';
import 'package:besyocity/screens/tenis10.dart';
import 'package:besyocity/screens/tenis1214.dart';
import 'package:besyocity/screens/tenis1618.dart';
import 'package:besyocity/screens/tenis35.dart';
import 'package:besyocity/screens/tenis8.dart';
import 'package:besyocity/screens/u9.dart'; // Futbol programına yönlendirme sayfası
import 'package:besyocity/screens/u10.dart';
import 'package:besyocity/screens/u11.dart';
import 'package:besyocity/screens/u12.dart';
import 'package:besyocity/screens/uzun_atlama.dart';

import 'package:besyocity/screens/kosular.dart'; // Example import for Atletizm subcategories
import 'package:besyocity/screens/vol12.dart';

import 'package:besyocity/screens/vol13.dart';
import 'package:besyocity/screens/vol14.dart';
import 'package:besyocity/screens/vol17.dart';
import 'package:besyocity/screens/vol19.dart';
import 'package:besyocity/screens/yuksek.dart';
import 'package:besyocity/screens/yuruyus.dart';
import 'package:besyocity/screens/yuzme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramlarPage extends StatelessWidget {
  const ProgramlarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Programlar',
          style: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor:
            const Color.fromARGB(255, 0, 64, 255), // Ana tema rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Futbol Yıllık Antrenman Programı
            ExpansionTile(
              title: Text(
                'Futbol Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'U9 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FutbolU9Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U10 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const U10Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U11 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const U11Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U12 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const U12Page(),
                      ),
                    );
                  },
                ),
              ],
            ),
            // Atletizm Yıllık Antrenman Programı with subcategories
            ExpansionTile(
              title: Text(
                'Atletizm Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Koşular',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KosularPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Disk Atma',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DiskAtmaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Çekiç Atma',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CekicAtmaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Gülle Atma',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GulleAtmaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Cirit Atma',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CiritAtmaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Uzun Atlama',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UzunAtlamaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Sırıkla Atlama',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SiriklaAtlamaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Yüksek Atlama',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const YuksekAtlamaPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Engel Koşuları',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EngelKosulariPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Yürüyüş',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const YuruyusPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Maraton',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaratonPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            // Voleybol Yıllık Antrenman Programı with subcategories
            ExpansionTile(
              title: Text(
                'Voleybol Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'U12 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoleybolU12Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U13-14 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoleybolU13U14Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U14-16 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoleybolU16Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U17-U19 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoleybolU17_19Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U19 ve Üstü Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VoleybolU19PlusPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Basketbol Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'U8 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasketbolU8Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U10-12 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasketbolU10U12Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U14-16 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasketbolU14Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U18-U20 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasketbolU18Page(),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Tenis Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'U8 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenisU8ProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U12 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenisU10ProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U12-U14 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenisU14ProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U16-U18 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenisU18ProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'U35 Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenisU35Page(),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Dövüş Sporları Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Karate Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KarateTrainingProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Taekwando Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TaekwondoTrainingProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Judo Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JudoTrainingProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Bocks Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BoxingTrainingProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Kickbox Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const KickboxingTrainingProgramPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Muay Thai Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MuayThaiTrainingProgramPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Yüzme Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Yüzme Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SwimmingTrainingProgramPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Fitness Yıllık Antrenman Programı',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Fitness Antrenman Programı',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const FitnessTrainingProgramPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            // Diğer programlar...
          ],
        ),
      ),
    );
  }
}
