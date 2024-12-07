import 'package:flutter/material.dart';

class OzyesPage extends StatefulWidget {
  const OzyesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OzyesPageState createState() => _OzyesPageState();
}

class _OzyesPageState extends State<OzyesPage> {
  // List of answers selected by the user
  List<int> answers = [0, 0, 0, 0, 0, 0, 0]; // Initializing with 7 zeros for 2 questions

  // Function to calculate Özyes score
  int _calculateScore() {
    // Calculating total score by adding the scores from the answers list
    int score = answers.fold(0, (sum, score) => sum + score);
    return score;
  }

  // Function to calculate coordination parkour score based on rank
  int _calculateParkourScore(int rankIndex) {
    // Define the points system based on rank
    List<int> rankPoints = [
      100, // İlk 100
      90,  // İlk 250
      80,  // İlk 500
      70,  // İlk 1000
      60,  // İlk 1500
      50,  // İlk 2000
      40,  // İlk 2500
      30,  // İlk 3000
      20,  // İlk 4000
      15,  // İlk 5000
      10,  // İlk 6000
      5,   // İlk 7000
      3,   // İlk 8000
      2,   // İlk 9000
      1    // İlk 9500
    ];

    // Return the points for the selected rank
    return rankPoints[rankIndex];
  }

  // Function to build each question widget
  Widget _buildQuestion(String question, List<String> options, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...List.generate(
          options.length,
          (i) => RadioListTile<int>(
            title: Text(options[i]),
            value: i + 1, // Value starts from 1
            groupValue: answers[index],
            onChanged: (value) {
              setState(() {
                answers[index] = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Özyes Puan Hesaplama'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // First Question: Sports Background
            _buildQuestion(
              '1. Bir spor branşında sportif özgeçmişiniz nedir?',
              [
                'Özgeçmişim Yok',
                'Olimpiyatlarda ilk 3\'e girmek 100p',
                'Futbolda Herhangi Bir Kategoride A Milli Olmak 100p',
                'Futbolda Süper Lig\'te Lisanslı Sporcu Olmak 95p',
                'Futbolda 1. Lig\'te Lisanslı Sporcu Olmak veya B Milli Olmak 90p',
                'Olimpik Branşlarda Dünya Şampiyonlarında ilk 3\'e girmek 90p',
                'Futbolda 2. Lig\'te Lisanslı Sporcu Olmak 85p',
                'Olimpik Olmayan Branşlarda Dünya Şampiyonlarında ilk 3\'e girmek 45p',
                'Futbolda C Milli Olmak 75p',
                'Futbolda Bölgesel Ligde Lisanslı Sporcu Olmak 70p',
                'Olimpik Olmayan Branşlarda Avrupa Şampiyonlarında ilk 3\'e girmek 40p',
                'Futbolda A2, Rezerv veya Paf Liginde lisanslı sporcu olmak 70p',
                'Olimpik Olmayan Branşlarda A Milli Sporcu Olmak 35p',
                'B Milli Sporcu Olmak 65p',
                'Olimpik Olmayan Branşlarda B Milli Sporcu Olmak 32.5p',
                'Olimpik Olmayan Branşlarda C Milli Sporcu Olmak 30p',
                'Olimpik Branşta 5 Yıl Lisanslı Sporcu Olmak 50p',
                'Olimpik Olmayan Branşta 5 Yıl Lisanslı Sporcu Olmak 25p',
                'Olimpik Branşta 4 Yıl Lisanslı Sporcu Olmak 40p',
                'Olimpik Olmayan Branşta 4 Yıl Lisanslı Sporcu Olmak 20p',
                'Olimpik Branşta 3 Yıl Lisanslı Sporcu Olmak 30p',
                'Olimpik Olmayan Branşta 3 Yıl Lisanslı Sporcu Olmak 15p',
                'Olimpik Branşta 2 Yıl Lisanslı Sporcu Olmak 20p',
                'Olimpik Branşta 20.08.2023 Tarihinden Önce 1 Yılı Doldurmuş Lisansa Sahip Olmak 10p',
                'Olimpik Olmayan Branşta 20.08.2023 Tarihinden Önce 1 Yılı Doldurmuş Lisansa Sahip Olmak 10p',
              ],
              0, // First question is indexed at 0
            ),
            const SizedBox(height: 20),
            // Second Question: Koordinasyon Parkuru
            _buildQuestion(
              '2. Koordinasyon parkurunda 10,000 kişi arasında kaçıncı olursunuz?',
              [
                'İlk 100',
                'İlk 250',
                'İlk 500',
                'İlk 1000',
                'İlk 1500',
                'İlk 2000',
                'İlk 2500',
                'İlk 3000',
                'İlk 4000',
                'İlk 5000',
                'İlk 6000',
                'İlk 7000',
                'İlk 8000',
                'İlk 9000',
                'İlk 9500',
              ],
              1, // Second question is indexed at 1
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int score = _calculateScore();
                int parkourScore = _calculateParkourScore(answers[1] - 1); // Subtract 1 to match 0-indexed list

                int totalScore = score + parkourScore; // Total score includes both answers

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Özyes Puanınız'),
                    content: Text('Toplam Özyes puanınız: $totalScore'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Tamam'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 64, 255),
              ),
              child: const Text('Puanı Hesapla'),
            ),
          ],
        ),
      ),
    );
  }
}
