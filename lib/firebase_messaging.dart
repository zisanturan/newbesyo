import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart'; // Logging paketini dahil edin

final Logger _logger = Logger('NotificationLogger'); // Logger nesnesi oluştur

Future<void> _backgroundMessageHandler(RemoteMessage message) async {
  // Arka planda gelen mesajları işler
  _logger.info("Arka planda gelen mesaj: ${message.notification?.title}"); // print yerine info kullanıyoruz
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebase'i başlat
  FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler); // Arka plan dinleyici
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Push Notifications',
      home: const NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late FirebaseMessaging _firebaseMessaging;
  String _notificationMessage = "Henüz bildirim alınmadı.";

  @override
  void initState() {
    super.initState();
    _setupFirebaseMessaging();
  }

  void _setupFirebaseMessaging() async {
    _firebaseMessaging = FirebaseMessaging.instance;

    // Bildirim izinlerini iste
    NotificationSettings settings = await _firebaseMessaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _logger.info('Bildirim izni verildi.'); // info seviyesinde log
    } else {
      _logger.warning('Bildirim izni reddedildi.'); // warning seviyesi
    }

    // FCM token'ını al
    _firebaseMessaging.getToken().then((token) {
      _logger.info("FCM Token: $token");
    });

    // Foreground'da bildirim dinleme
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      setState(() {
        _notificationMessage = message.notification?.title ?? "Bildirim başlığı yok";
      });
      _showSnackbar(message.notification?.title ?? "Bildirim başlığı yok");
    });

    // Uygulama açıldığında bildirim dinleme
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _logger.info("Uygulama açıkken gelen bildirim: ${message.notification?.title}");
      setState(() {
        _notificationMessage = "Bildirim açıldı: ${message.notification?.title}";
      });
    });
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Bildirimler")),
      body: Center(
        child: Text(
          _notificationMessage,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
