import 'package:flutter/material.dart';

class CekicAtmaPage extends StatelessWidget {
  const CekicAtmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Çekiç Atma Antrenman Programı"),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Turuncu renk
      ),
      body: ListView(
        children: [
          _buildTrainingCard(
            month: "1. Ay - Temel Dayanıklılık ve Güç Geliştirme",
            exercises: [
              "Haftada 4 Gün Antrenman",
              "Pazartesi ve Perşembe (Genel Kuvvet): Squat, Deadlift, Bench press, Çekirdek kuvvet",
              "Çarşamba ve Cumartesi (Denge ve Koordinasyon): Denge çalışmaları, Hafif ağırlıkla çekiç atma, Koşu ve Dayanıklılık",
            ],
          ),
          _buildTrainingCard(
            month: "2. Ay - Dayanıklılık ve Patlayıcı Güç",
            exercises: [
              "Haftada 4 Gün Antrenman",
              "Pazartesi ve Perşembe (Patlayıcı Güç): Power clean, Box jump, Medicine ball fırlatma, Squat jump",
              "Çarşamba ve Cumartesi (Denge ve Teknik): Tek ayak denge çalışmaları, Çekiç atma dönüş pozisyonunda düşük ağırlıkla çalışma",
            ],
          ),
          _buildTrainingCard(
            month: "3. Ay - Teknik Geliştirme ve Hız",
            exercises: [
              "Haftada 5 Gün Antrenman",
              "Pazartesi, Çarşamba, Cuma (Teknik Çalışması): Ağırlıksız veya hafif çekiçle dönüş çalışması",
              "Salı ve Cumartesi (Hız ve Patlayıcı Güç): Kısa mesafeli sprintler, Plyometric lunges",
            ],
          ),
          _buildTrainingCard(
            month: "4. Ay - Teknik Odaklı Çalışmalar ve Çekirdek Gücü",
            exercises: [
              "Haftada 5 Gün Antrenman",
              "Pazartesi, Çarşamba, Cuma (Teknik Çalışmaları): Çekiç atma hareketini hafif bir ağırlıkla tamamlama",
              "Salı ve Cumartesi (Çekirdek Kuvvet): Plank varyasyonları, Russian twist, Medicine ball ile yan rotasyon",
            ],
          ),
          _buildTrainingCard(
            month: "5. Ay - Hız ve Patlayıcı Güç",
            exercises: [
              "Haftada 4 Gün Antrenman",
              "Pazartesi ve Perşembe (Patlayıcı Güç): Power snatch, Box jump, Tuck jump",
              "Çarşamba ve Cumartesi (Hız Antrenmanı): Sprint, Çekiç atma dönüşünde hız çalışması",
            ],
          ),
          _buildTrainingCard(
            month: "6. Ay - Teknik ve Kuvvet Antrenmanı",
            exercises: [
              "Haftada 5 Gün Antrenman",
              "Pazartesi, Çarşamba, Cuma (Teknik Antrenmanı): Düşük ağırlıklı çekiç ile hız ve denge çalışmaları",
              "Salı ve Cumartesi (Kuvvet Antrenmanı): Front squat, Overhead press, Lunge",
            ],
          ),
          _buildTrainingCard(
            month: "7. Ay - Yarışma Dönemi için Hazırlık",
            exercises: [
              "Haftada 5 Gün Antrenman",
              "Pazartesi, Çarşamba, Cuma (Yarışma Ağırlığında Çekiç Atma): Tam dönüşle teknik atışlar, yarışma ağırlığında",
              "Salı ve Cumartesi (Hız ve Patlayıcı Güç): Sprint, Tuck jump, Box jump",
            ],
          ),
          _buildTrainingCard(
            month: "8. Ay - Yoğun Teknik ve Güç Antrenmanı",
            exercises: [
              "Haftada 5 Gün Antrenman",
              "Pazartesi, Çarşamba, Cuma (Teknik Çalışma): Tam dönüş çalışmaları ve hız artırma",
              "Salı ve Cumartesi (Güç Antrenmanı): Clean and jerk, Deadlift",
            ],
          ),
          _buildTrainingCard(
            month: "9. Ay - Teknik Pekiştirme ve Hız Koruma",
            exercises: [
              "Haftada 4 Gün Antrenman",
              "Pazartesi ve Perşembe (Teknik Çalışma): Çekiç atma dönüşüyle hafif hız artırma çalışmaları",
              "Çarşamba ve Cumartesi (Hız Antrenmanı): Kısa mesafe sprintler, Plyometric jump",
            ],
          ),
          _buildTrainingCard(
            month: "10. Ay - Yarışma Odaklı Çalışma",
            exercises: [
              "Haftada 4 Gün Antrenman",
              "Pazartesi ve Perşembe (Tam Teknik Çalışmalar): Yarışma ağırlığında tam dönüş çekiç atma",
              "Çarşamba ve Cumartesi (Hız Koruma): Orta mesafe koşu ve hafif hız çalışmaları",
            ],
          ),
          _buildTrainingCard(
            month: "11. Ay - Hafif Teknik Çalışma ve Dinlenme",
            exercises: [
              "Haftada 3 Gün Antrenman",
              "Hafif teknik çalışmalar, kısa mesafe koşular, dinlenme ve esneklik artırıcı egzersizler",
            ],
          ),
          _buildTrainingCard(
            month: "12. Ay - Dinlenme ve Hafif Çalışmalar",
            exercises: [
              "Haftada 3 Gün Antrenman",
              "Hafif tempo koşu, esneme çalışmaları ve hafif teknik tekrarlar",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingCard({required String month, required List<String> exercises}) {
    return Card(
      color: const Color.fromARGB(255, 0, 64, 255), // Turuncu renk
      margin: const EdgeInsets.all(10),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              month,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ...exercises.map((exercise) => Text(
              "• $exercise",
              style: const TextStyle(color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
