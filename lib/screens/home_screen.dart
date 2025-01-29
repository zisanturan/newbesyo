import 'package:besyocity/screens/duyurular.dart';
// ignore: library_prefixes
import 'package:besyocity/screens/profile_page.dart' as profilePage;
// ignore: library_prefixes
import 'package:besyocity/screens/social_page.dart' as socialPage;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:besyocity/screens/basarilarimiz_page.dart';
import 'package:besyocity/screens/iletisim.dart';
import 'package:besyocity/screens/kurslar_page.dart';
import 'package:besyocity/screens/programlar_page.dart';
import 'package:besyocity/screens/soru_sor.dart';
import 'package:besyocity/screens/urunler.dart';
import 'package:besyocity/screens/auth_screen.dart'; 
import 'package:besyocity/utils/constans.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
import 'package:besyocity/screens/ozyes.dart'; 
import 'package:besyocity/screens/about_page.dart'; 
import 'package:besyocity/screens/besyo_exam_register.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; 

  final List<Widget> _pages = [
    const HomePage(),
    socialPage.SocialPage(userProfile: socialPage.UserProfile(
      fullName: 'Ad Soyad',
      email: FirebaseAuth.instance.currentUser?.email ?? '',
      phoneNumber: '',  
      city: '',        
      district: '', id: '', name: '', surname: '',    
    )),
    const DynamicQuizApp(),
    const SoruSorPage(),
    profilePage.ProfilePage(
      userProfile: profilePage.UserProfile(
        fullName: 'Ad Soyad',
        email: FirebaseAuth.instance.currentUser?.email ?? '',
        phoneNumber: '',  
        city: '',        
        district: '',    
      ),
    ),
  ];

  void _onSelectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.pop(context); 
  }

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const AuthScreen()),
          (route) => false, 
        );
      }
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Çıkış Hatası"),
            content: Text("Bir hata oluştu: $e"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Tamam"),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APP_TITLE,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _signOut,
          ),
        ],
      ),
      body: _pages[_currentIndex], 
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 64, 255),
              ),
              child: Text(
                APP_TITLE,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildDrawerItem(Icons.info, 'Hakkımızda', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            }),
            _buildDrawerItem(Icons.announcement, 'Duyurular', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnnouncementsPage()),
              );
            }),
            _buildDrawerItem(Icons.school, 'Kurslarımız', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KurslarimizPage()),
              );
            }),
            _buildDrawerItem(Icons.shopping_cart, 'Ürünler', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductScreen()),
              );
            }),
            _buildDrawerItem(Icons.accessibility_new, 'Özyes', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OzyesPage()),
              );
            }),
            _buildDrawerItem(Icons.fitness_center, 'Programlar', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProgramlarPage()),
              );
            }),
            _buildDrawerItem(Icons.mail, 'İletişim', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            }),
            _buildDrawerItem(Icons.assignment, 'BESYO Deneme Sınavı', -1, onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BesyoExamRegister()),
              );
            }),
            _buildDrawerItem(Icons.exit_to_app, 'Çıkış', -1, onTap: _signOut),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
        selectedItemColor: const Color.fromRGBO(251, 37, 118, 1),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed, 
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Sosyal'),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Besyo Test'),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'Soru Sor'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index,
      {Function()? onTap}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFFB2576)),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: const Color(0xFFFB2576),
        ),
      ),
      onTap: onTap ?? () {
        _onSelectPage(index);
      },
    );
  }
}
