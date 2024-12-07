import 'package:flutter/material.dart';

class PMYOPOMEMPage extends StatelessWidget {
  const PMYOPOMEMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PMYO-POMEM'),
        backgroundColor: const Color.fromARGB(255, 8, 0, 255),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'PMYO-POMEM polislik sınavlarına hazırlık programı hakkında detaylı bilgi burada olacak.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
