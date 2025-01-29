import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CityBasedCoursesPage extends StatefulWidget {
  const CityBasedCoursesPage({super.key});

  @override
  State<CityBasedCoursesPage> createState() => _CityBasedCoursesPageState();
}

class _CityBasedCoursesPageState extends State<CityBasedCoursesPage> {
  String? _userCity;
  final List<Map<String, dynamic>> _courses = [
    {
      'city': 'İstanbul',
      'locations': [
        {
          'name': 'İstanbul Şubesi',
          'address': 'İstanbul',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Ankara',
      'locations': [
        {
          'name': 'Ankara Şubesi',
          'address': 'Ankara',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'İzmir',
      'locations': [
        {
          'name': 'İzmir Şubesi',
          'address': 'İzmir',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Bursa',
      'locations': [
        {
          'name': 'Bursa Şubesi',
          'address': 'Bursa',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Antalya',
      'locations': [
        {
          'name': 'Antalya Şubesi',
          'address': 'Antalya',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Adana',
      'locations': [
        {
          'name': 'Adana Şubesi',
          'address': 'Adana',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Konya',
      'locations': [
        {
          'name': 'Konya Şubesi',
          'address': 'Konya',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Kayseri',
      'locations': [
        {
          'name': 'Kayseri Şubesi',
          'address': 'Kayseri',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Trabzon',
      'locations': [
        {
          'name': 'Trabzon Şubesi',
          'address': 'Trabzon',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Eskişehir',
      'locations': [
        {
          'name': 'Eskişehir Şubesi',
          'address': 'Eskişehir',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Gaziantep',
      'locations': [
        {
          'name': 'Gaziantep Şubesi',
          'address': 'Gaziantep',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Diyarbakır',
      'locations': [
        {
          'name': 'Diyarbakır Şubesi',
          'address': 'Diyarbakır',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Mersin',
      'locations': [
        {
          'name': 'Mersin Şubesi',
          'address': 'Mersin',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Samsun',
      'locations': [
        {
          'name': 'Samsun Şubesi',
          'address': 'Samsun',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Denizli',
      'locations': [
        {
          'name': 'Denizli Şubesi',
          'address': 'Denizli',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Malatya',
      'locations': [
        {
          'name': 'Malatya Şubesi',
          'address': 'Malatya',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Manisa',
      'locations': [
        {
          'name': 'Manisa Şubesi',
          'address': 'Manisa',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Mardin',
      'locations': [
        {
          'name': 'Mardin Şubesi',
          'address': 'Mardin',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Muğla',
      'locations': [
        {
          'name': 'Muğla Şubesi',
          'address': 'Muğla',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Muş',
      'locations': [
        {
          'name': 'Muş Şubesi',
          'address': 'Muş',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Nevşehir',
      'locations': [
        {
          'name': 'Nevşehir Şubesi',
          'address': 'Nevşehir',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Niğde',
      'locations': [
        {
          'name': 'Niğde Şubesi',
          'address': 'Niğde',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Ordu',
      'locations': [
        {
          'name': 'Ordu Şubesi',
          'address': 'Ordu',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Osmaniye',
      'locations': [
        {
          'name': 'Osmaniye Şubesi',
          'address': 'Osmaniye',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Rize',
      'locations': [
        {
          'name': 'Rize Şubesi',
          'address': 'Rize',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Sakarya',
      'locations': [
        {
          'name': 'Sakarya Şubesi',
          'address': 'Sakarya',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Siirt',
      'locations': [
        {
          'name': 'Siirt Şubesi',
          'address': 'Siirt',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Sinop',
      'locations': [
        {
          'name': 'Sinop Şubesi',
          'address': 'Sinop',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Sivas',
      'locations': [
        {
          'name': 'Sivas Şubesi',
          'address': 'Sivas',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Şanlıurfa',
      'locations': [
        {
          'name': 'Şanlıurfa Şubesi',
          'address': 'Şanlıurfa',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Şırnak',
      'locations': [
        {
          'name': 'Şırnak Şubesi',
          'address': 'Şırnak',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Tekirdağ',
      'locations': [
        {
          'name': 'Tekirdağ Şubesi',
          'address': 'Tekirdağ',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Tokat',
      'locations': [
        {
          'name': 'Tokat Şubesi',
          'address': 'Tokat',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Tunceli',
      'locations': [
        {
          'name': 'Tunceli Şubesi',
          'address': 'Tunceli',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Uşak',
      'locations': [
        {
          'name': 'Uşak Şubesi',
          'address': 'Uşak',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Van',
      'locations': [
        {
          'name': 'Van Şubesi',
          'address': 'Van',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Yalova',
      'locations': [
        {
          'name': 'Yalova Şubesi',
          'address': 'Yalova',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Yozgat',
      'locations': [
        {
          'name': 'Yozgat Şubesi',
          'address': 'Yozgat',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
    {
      'city': 'Zonguldak',
      'locations': [
        {
          'name': 'Zonguldak Şubesi',
          'address': 'Zonguldak',
          'phone': '+90 506 466 8387',
          'whatsapp': 'https://wa.me/905064668387',
        },
      ],
    },
  ];

  @override
  void initState() {
    super.initState();
    _getUserCity();
  }

  Future<void> _getUserCity() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (doc.exists && mounted) {
        setState(() {
          _userCity = doc.data()?['city'] as String?;
          // Kullanıcının şehrini listenin başına taşı
          if (_userCity != null) {
            final userCityIndex =
                _courses.indexWhere((c) => c['city'] == _userCity);
            if (userCityIndex != -1) {
              final userCityCourse = _courses.removeAt(userCityIndex);
              _courses.insert(0, userCityCourse);
            }
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kurslarımız'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Türkiye Geneli Spor Hazırlık Kursları',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 64, 255),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            if (_userCity != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color:
                        // ignore: deprecated_member_use
                        const Color.fromARGB(255, 0, 64, 255).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Bulunduğunuz Şehir: $_userCity',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 64, 255),
                    ),
                  ),
                ),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _courses.length,
              itemBuilder: (context, index) {
                final course = _courses[index];
                return _buildCityCard(course);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityCard(Map<String, dynamic> course) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        title: Text(
          course['city'],
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          ...List.generate(
            course['locations'].length,
            (index) => _buildLocationCard(course['locations'][index]),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationCard(Map<String, dynamic> location) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            location['name'],
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.location_on, size: 16),
              const SizedBox(width: 4),
              Text(location['address']),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () => _launchUrl('tel:${location['phone']}'),
                icon: const Icon(Icons.phone),
                label: const Text('Ara'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 64, 255),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _launchUrl(location['whatsapp']),
                icon: const Icon(Icons.message),
                label: const Text('WhatsApp'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Bağlantı açılamıyor')),
        );
      }
    }
  }
}
