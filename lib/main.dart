import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart'; // Crashlytics paketini ekledik
import 'firebase_options.dart'; // Firebase yapılandırma dosyası
// SplashScreen için yeni bir dosya
import 'screens/error_screen.dart'; // Hata ekranı

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase'i başlatmak ve Crashlytics'i ayarlamak için asenkron işlemi başlatıyoruz
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Firebase yapılandırması
    );

    // Crashlytics için hata yakalama
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
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

// Firebase Crashlytics ile test hatası raporlama
void simulateCrash() {
  FirebaseCrashlytics.instance.recordError(
    Exception("Simulated crash"),
    StackTrace.current,
    reason: "test hatası",
  );
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TSB Uygulaması'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Firebase Crashlytics Test',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Simüle edilmiş hata fonksiyonunu tetikleyin
                simulateCrash();
              },
              child: const Text('Hata Simüle Et'),
            ),
          ],
        ),
      ),
    );
  }
}
