import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebase'i başlatın

  // Bildirim izinlerini isteyin (Android için)
  await FirebaseMessaging.instance.requestPermission();

  // Arka planda bildirim almayı başlatma
  FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);

  runApp(const MyApp());
}

// Arka planda alınan bildirimler için işlem yapacak fonksiyon
Future<void> _backgroundMessageHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Arka planda gelen mesaj: ${message.notification?.title}");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase Push Notifications',
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late FirebaseMessaging _firebaseMessaging;

  @override
  void initState() {
    super.initState();
    _firebaseMessaging = FirebaseMessaging.instance;

    // FCM token almak
    _firebaseMessaging.getToken().then((token) {
      if (kDebugMode) {
        print("FCM Token: $token");
      }
    });

    // Foreground'da gelen bildirimleri dinlemek
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("Foreground'da gelen mesaj: ${message.notification?.title}");
      }
      // Burada bildirim açılacak veya gösterilecek
    });

    // Uygulama açıldığında gelen bildirimleri dinlemek
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("Uygulama açıldığında gelen mesaj: ${message.notification?.title}");
      }
      // Burada bildirim detaylarına gidilecek
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bildirim Örneği")),
      body: const Center(
        child: Text("Bildirim almayı bekliyoruz..."),
      ),
    );
  }
}
