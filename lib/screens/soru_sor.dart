import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SoruSorPage extends StatefulWidget {
  const SoruSorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SoruSorPageState createState() => _SoruSorPageState();
}

class _SoruSorPageState extends State<SoruSorPage> {
  final TextEditingController _rankingController = TextEditingController();
  String? _message;
  bool _isAthlete = false; // Milli sporcu durumu
  bool _isTop800 = false; // İlk 800 binde olma durumu
  String? _selectedDepartment;
  String? _selectedUniversity;

  // Türkiye'deki üniversitelerin bir listesi
  final List<String> _universities = [
    "Marmara Üniversitesi",
    "İstanbul Üniversitesi-Cerrahpaşa",
    "İstanbul Gelişim Üniversitesi",
    "Ankara Üniversitesi",
    "Hacettepe Üniversitesi",
    "Gazi Üniversitesi",
    "Ege Üniversitesi",
    "Dokuz Eylül Üniversitesi",
    "İzmir Katip Çelebi Üniversitesi",
    "Akdeniz Üniversitesi",
    "Selçuk Üniversitesi",
    "Necmettin Erbakan Üniversitesi",
    "Erciyes Üniversitesi",
    "Kayseri Üniversitesi",
    "Karadeniz Teknik Üniversitesi",
    "Ondokuz Mayıs Üniversitesi",
    "Anadolu Üniversitesi",
    "Cumhuriyet Üniversitesi",
    "Atatürk Üniversitesi",
    "Fırat Üniversitesi",
    "Dicle Üniversitesi",
    "Çukurova Üniversitesi",
    "Pamukkale Üniversitesi",
    "Süleyman Demirel Üniversitesi",
    "Muğla Sıtkı Koçman Üniversitesi",
    "Gaziantep Üniversitesi",
    "Mersin Üniversitesi",
    "Van Yüzüncü Yıl Üniversitesi",
    "Balıkesir Üniversitesi",
    "Çanakkale Onsekiz Mart Üniversitesi",
    "Trakya Üniversitesi",
    "Sakarya Üniversitesi",
    "Kocaeli Üniversitesi",
    "Hatay Mustafa Kemal Üniversitesi",
    "Malatya İnönü Üniversitesi",
    "Aydın Adnan Menderes Üniversitesi",
    "Afyon Kocatepe Üniversitesi",
    "Kastamonu Üniversitesi",
    "Ordu Üniversitesi",
    "Rize Recep Tayyip Erdoğan Üniversitesi",
    "Amasya Üniversitesi",
    "Bartın Üniversitesi",
    "Bingöl Üniversitesi",
    "Bitlis Eren Üniversitesi",
    "Bolu Abant İzzet Baysal Üniversitesi",
    "Isparta Uygulamalı Bilimler Üniversitesi",
    "Bandırma Onyedi Eylül Üniversitesi"
  ];

  void _checkEligibility() {
    final int ranking = int.tryParse(_rankingController.text) ?? 0;

    if (_selectedUniversity == null) {
      setState(() {
        _message = 'Lütfen bir üniversite seçin.';
      });
      return;
    }

    // Eğer kullanıcı "İlk 800 Binde Misiniz?" sorusuna Evet dediyse ve sıralama 800 binin üstündeyse hata mesajı
    if (_isTop800 && ranking > 800000) {
      setState(() {
        _message =
            'Yanlış veri girdiniz. Sıralamanız 800.000\'den küçük olmalı.';
      });
      return;
    }

    // İlk 800 binde olma durumunu kontrol et
    if (_isTop800) {
      _message = 'Tebrikler! Barajı geçtiğiniz için kazanma şansınız yüksek';
    } else if (_isAthlete) {
      _message =
          'Tebrikler! Milli sporcu olduğunuz için avantajlısınız. ${_selectedUniversity!} kazandınız.';
    } else if (ranking <= 500000) {
      _message = 'Tebrikler! ${_selectedUniversity!} için uygunsunuz.';
    } else {
      _message =
          'Maalesef, ${_selectedUniversity!} için sıralamanız yeterli görünmüyor.';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soru Sor',
          style: GoogleFonts.poppins(
            color: const Color(0xFFF7F9F2),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Yerleştirme Sıralamanızı Girin:'),
            const SizedBox(height: 10),
            _buildRankingInput(),
            const SizedBox(height: 20),
            _buildSectionTitle('Milli Sporcu Musunuz?'),
            const SizedBox(height: 10),
            _buildAthleteButtons(),
            const SizedBox(height: 20),
            _buildSectionTitle('İlk 800 Binde Misiniz?'),
            const SizedBox(height: 10),
            _buildTop800Buttons(),
            const SizedBox(height: 20),
            _buildSectionTitle('Hangi Bölümü Tercih Ediyorsunuz?'),
            const SizedBox(height: 10),
            _buildDepartmentDropdown(),
            const SizedBox(height: 20),
            _buildSectionTitle('Hangi Üniversiteyi Tercih Ediyorsunuz?'),
            const SizedBox(height: 10),
            _buildUniversityDropdown(),
            const SizedBox(height: 20),
            _buildCheckEligibilityButton(),
            const SizedBox(height: 20),
            if (_message != null) _buildEligibilityMessage(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 0, 64, 255),
      ),
    );
  }

  Widget _buildRankingInput() {
    return TextField(
      controller: _rankingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF4F75FF)),
        ),
        labelText: 'Sıralamanız',
        hintText: 'Sıralamanızı girin...',
        labelStyle:
            GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF4F75FF)),
        hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget _buildAthleteButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isAthlete = true;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                _isAthlete ? const Color(0xFF4F75FF) : const Color(0xFFB2B2B2),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Evet',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isAthlete = false;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                !_isAthlete ? const Color(0xFF4F75FF) : const Color(0xFFB2B2B2),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Hayır',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildTop800Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isTop800 = true;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                _isTop800 ? const Color(0xFF4F75FF) : const Color(0xFFB2B2B2),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Evet',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isTop800 = false;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                !_isTop800 ? const Color(0xFF4F75FF) : const Color(0xFFB2B2B2),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Hayır',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildDepartmentDropdown() {
    return DropdownButton<String>(
      value: _selectedDepartment,
      hint: Text(
        'Bir bölüm seçin',
        style: GoogleFonts.poppins(color: const Color(0xFF4F75FF)),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedDepartment = newValue;
        });
      },
      items: <String>[
        'Beden Eğitimi ve Spor Öğretmenliği',
        'Antrenörlük',
        'Rekreasyon',
        'Spor Yöneticiliği',
        'Engellilerde egzersiz ve spor eğitimi',
        'Spor Bilimleri',
        'Egzersiz ve spor bilimleri',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: GoogleFonts.poppins(color: const Color(0xFF4F75FF)),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildUniversityDropdown() {
    return DropdownButton<String>(
      value: _selectedUniversity,
      hint: Text(
        'Bir üniversite seçin',
        style: GoogleFonts.poppins(color: const Color(0xFF4F75FF)),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedUniversity = newValue;
        });
      },
      items: _universities.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: GoogleFonts.poppins(color: const Color(0xFF4F75FF)),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCheckEligibilityButton() {
    return Center(
      child: ElevatedButton(
        onPressed: _checkEligibility,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: const Color(0xFF4F75FF),
        ),
        child: Text(
          'Uygunluğu Kontrol Et',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildEligibilityMessage() {
    return Center(
      child: Text(
        _message!,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF4F75FF),
        ),
      ),
    );
  }
}
