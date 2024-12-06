import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// Kullanıcı giriş/kayıt ekranı
// Kullanıcı giriş yaptıktan sonra ana ekran
import 'screens/splash_screen.dart'; // SplashScreen için yeni bir dosya
import 'firebase_options.dart'; // Firebase yapılandırma dosyası

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Firebase'i başlat
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Firebase yapılandırması
    );
  } catch (e) {
    // Firebase başlatılamazsa hata mesajı göster
    if (kDebugMode) {
      print("Firebase bağlantısı kurulamadı: $e");
    }
    return;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSB',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Uygulama teması mavi tonlarıyla
      ),
      home: const SplashScreen(), // İlk olarak SplashScreen gösterilecek
    );
  }
}
