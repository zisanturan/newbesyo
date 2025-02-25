import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web; // Web platformu için yapılandırma
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return android;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ios;
    } else {
      throw UnsupportedError('DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyA1LshjHwkkTVmNlp3qS-oTqYMoK86bCrk",
    appId: "1:577376604543:web:59450b2e5ef479c1c84a4a",
    messagingSenderId: "577376604543",
    projectId: "besyocity-197ae",
    authDomain: "besyocity-197ae.firebaseapp.com", // Web için authDomain ekleyin
    storageBucket: "besyocity-197ae.firebasestorage.app", // Web için storageBucket ekleyin
    measurementId: "G-0KS84L3Q5X", // Web için analytics ölçüm ID'si ekleyin
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyA1LshjHwkkTVmNlp3qS-oTqYMoK86bCrk",
    appId: "1:577376604543:android:8ee892046b89b32cc84a4a",
    messagingSenderId: "577376604543",
    projectId: "besyocity-197ae",
    storageBucket: "besyocity-197ae.firebasestorage.app",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyA1LshjHwkkTVmNlp3qS-oTqYMoK86bCrk",
    appId: "1:577376604543:ios:688a22443c6127bdc84a4a",
    messagingSenderId: "577376604543",
    projectId: "besyocity-197ae",
    storageBucket: "besyocity-197ae.firebasestorage.app",
    iosBundleId: "com.tsb.besyocity",
  );
}

