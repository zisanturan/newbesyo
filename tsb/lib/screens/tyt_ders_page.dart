import 'package:flutter/material.dart';

class TYTDersPage extends StatelessWidget {
  const TYTDersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TYT Ders Çalışma Programı'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMonthSection(context, '1. Ay', 'assets/images/birinciay.png'),
          _buildMonthSection(context, '2. Ay', 'assets/images/ikinciay.png'),
          _buildMonthSection(context, '3. Ay', 'assets/images/ucuncuay.png'),
          _buildMonthSection(context, '4. Ay', 'assets/images/dorduncuay.png'),
        ],
      ),
    );
  }

  Widget _buildMonthSection(
      BuildContext context, String month, String imagePath) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24.0),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 1, 43, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                month,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300, // Increased height for larger display
            ),
          ),
        ],
      ),
    );
  }
}
