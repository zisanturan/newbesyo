import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Firebase yapılandırma dosyası
import 'screens/splash_screen.dart'; // SplashScreen için yeni bir dosya
import 'screens/error_screen.dart'; // Hata ekranı

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Firebase'i başlatmak için asenkron işlemi başlatıyoruz
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Firebase yapılandırması
    );
  } catch (e) {
    // Firebase başlatılamazsa, hata mesajı göster ve uygulamayı ErrorScreen ile başlat
    if (kDebugMode) {
      print("Firebase bağlantısı kurulamadı: $e");
    }
    runApp(MyApp(errorMessage: 'Firebase bağlantısı kurulamadı.'));
    return;
  }

  // Firebase başarıyla başlatılırsa, SplashScreen'i göster
  runApp(const MyApp(errorMessage: ''));
}

class MyApp extends StatelessWidget {
  final String errorMessage;

  const MyApp({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSB',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Uygulama teması mavi tonlarıyla
      ),
      home: errorMessage.isEmpty
          ? const SplashScreen() // Firebase başarıyla başlatıldıysa SplashScreen'i göster
          : ErrorScreen(errorMessage: errorMessage), // Hata durumunda ErrorScreen'i göster
    );
  }
}
