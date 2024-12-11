import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMessage;

  const ErrorScreen({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hata')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 100, color: Colors.red),
            Text(
              'Bir hata oluştu: $errorMessage',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Uygulamayı yeniden başlatabilirsiniz ya da kullanıcıyı başka bir sayfaya yönlendirebilirsiniz.
                Navigator.of(context).pop();
              },
              child: const Text('Yeniden Dene'),
            ),
          ],
        ),
      ),
    );
  }
}
