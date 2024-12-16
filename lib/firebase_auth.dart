import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

Future<String> registerUser(String email, String password) async {
  try {
    // Sağlanan e-posta ve şifre ile kullanıcı oluşturmayı dene
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Başarılı kayıt işlemini debug modunda logla
    if (kDebugMode) {
      print('Kayıt başarılı!');
    }

    // Başarı mesajını döndür
    return 'Kayıt başarılı!';
  } catch (e) {
    // Hata detaylarını debug modunda logla
    if (kDebugMode) {
      print('Hata: $e');
    }

    // Kullanıcı dostu hata mesajı sağla
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'email-already-in-use':
          return 'Bu e-posta zaten kullanımda.';
        case 'weak-password':
          return 'Şifre çok zayıf. Lütfen daha güçlü bir şifre girin.';
        case 'invalid-email':
          return 'Geçersiz e-posta adresi.';
        default:
          return 'Bilinmeyen bir hata oluştu. Lütfen tekrar deneyin.';
      }
    } else {
      return 'Bilinmeyen bir hata oluştu. Lütfen tekrar deneyin.';
    }
  }
}
