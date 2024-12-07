import 'package:flutter/material.dart';
import 'auth_screen.dart'; // Kullanıcı giriş/kayıt ekranı

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Tam ekran arka plan görüntüsü
          Image.asset(
            'assets/images/tsb.jpeg', // TSB görselinin yolu
            fit: BoxFit.cover,
          ),
          // "Şimdi Başla" butonu
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30), // Buton alt boşluğu
              child: TextButton(
                onPressed: () {
                  // AuthScreen'e yönlendirme
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 45, vertical: 20), // Buton iç boşlukları
                  backgroundColor: const Color.fromARGB(255, 0, 0, 255), // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Yuvarlatılmış kenarlar
                  ),
                ),
                child: const Text(
                  'Şimdi Başla', // Buton üzerindeki yazı
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Yazı rengi
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
