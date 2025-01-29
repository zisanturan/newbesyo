import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SporLisesiPage extends StatelessWidget {
  const SporLisesiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spor Lisesi'),
        backgroundColor: const Color.fromARGB(255, 8, 0, 255), // Başlık rengi
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Başlık
            Text(
              'Spor Liseleri Nedir?',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Spor liseleri, sportif yetenekleri geliştirmek ve öğrencileri profesyonel spor kariyerine hazırlamak amacıyla eğitim veren kurumlardır. '
              'Bu liselerde öğrenciler, hem akademik dersler hem de spor alanında özel eğitim alır.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Eğitim Programı
            Text(
              'Spor Liselerinde Eğitim Programı',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Spor liselerinde, öğrenciler hem genel lise müfredatına hem de spor odaklı derslere katılır. '
              'Spor dersleri arasında futbol, basketbol, voleybol, atletizm, yüzme ve daha birçok branş yer alır. '
              'Ayrıca, öğrenciler anatomi, spor fizyolojisi ve beslenme gibi derslerle de desteklenir.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Giriş Koşulları
            Text(
              'Spor Liselerine Giriş Koşulları',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Spor liselerine kabul edilmek için belirli şartlar sağlanmalıdır. Bunlar arasında:\n\n'
              '- Spor yetenek sınavlarında başarılı olmak\n'
              '- Akademik başarı düzeyi\n'
              '- Sağlık raporu ve spor yapmaya engel bir durumun olmaması\n'
              'yer alır. Ayrıca, başvurularda genellikle yetenek sınavı ve mülakat aşamaları bulunur.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Sporcu Olma Yolları
            Text(
              'Profesyonel Sporcu Olma Yolunda Spor Liseleri',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Spor liseleri, öğrencilerin profesyonel sporcu olma yolunda ilk adımı atmalarına yardımcı olur. '
              'Bu liselerde alınan eğitim, yeteneklerin gelişmesini sağlar ve üniversitelerin spor bölümlerine geçişi kolaylaştırır.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Spor Liselerinde Kariyer Fırsatları
            Text(
              'Spor Liselerinde Kariyer Fırsatları',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Spor liselerinden mezun olan öğrenciler, üniversitelerin spor bilimleri, beden eğitimi öğretmenliği, antrenörlük veya fizyoterapi gibi bölümlerine geçiş yapabilir. '
              'Ayrıca, profesyonel spor kulüplerinde kariyer yapma şansı elde edebilirler.',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
