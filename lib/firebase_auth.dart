import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

Future<String> registerUser(String email, String password) async {
  try {
    // Try to create a user with the provided email and password
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Log successful registration in debug mode
    if (kDebugMode) {
      print('Kayıt başarılı!');
    }

    // Return success message
    return 'Kayıt başarılı!';
  } catch (e) {
    // Log error details in debug mode
    if (kDebugMode) {
      print('Hata: $e');
    }

    // Provide a user-friendly error message
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
