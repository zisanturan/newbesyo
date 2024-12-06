import 'package:flutter/material.dart';

class BCKampPage extends StatelessWidget {
  const BCKampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BC Kamp'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'BC kamp programı hakkında detaylı bilgi burada olacak.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
