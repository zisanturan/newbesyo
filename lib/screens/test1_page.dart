import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BesyoInfoQuizApp());
}

class BesyoInfoQuizApp extends StatelessWidget {
  const BesyoInfoQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 0, 64, 255),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color.fromARGB(255, 23, 73, 173),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> _questions = [
    {
      'question': 'BESYO nedir?',
      'answers': [
        'Fiziksel Eğitim ve Spor Yüksekokulu',
        'Bir spor dalı',
        'Bir üniversite programı'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'BESYO bölümü hangi üniversitelerde bulunmaktadır?',
      'answers': [
        'Devlet üniversiteleri',
        'Özel üniversiteler',
        'Hem devlet hem özel üniversitelerde'
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'BESYO öğrencileri hangi sporları öğrenir?',
      'answers': [
        'Futbol, basketbol, voleybol',
        'Boks, güreş, karate',
        'Herhangi bir spor dalını seçebilirler'
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'BESYO mezunları hangi alanlarda çalışabilir?',
      'answers': [
        'Spor eğitmeni, antrenör, spor yöneticisi',
        'Öğretmen, yönetici',
        'Sağlık sektörü'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'BESYO sınavında hangi puan türü geçerlidir?',
      'answers': [
        'TYT (Temel Yeterlilik Testi)',
        'AYT (Alan Yeterlilik Testi)',
        'Her ikisi de geçerlidir'
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'BESYO programının süresi kaç yıldır?',
      'answers': ['2 yıl', '4 yıl', '5 yıl'],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'BESYO öğrencileri hangi dersleri alır?',
      'answers': [
        'Sporda liderlik, egzersiz bilimi',
        'Fiziksel yeterlilik dersleri',
        'Her ikisi de'
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'BESYO bölümü ile ilgili hangi beceriler geliştirilir?',
      'answers': [
        'İletişim ve liderlik becerileri',
        'Yalnızca teknik beceriler',
        'Sadece fiziksel yetenek'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'BESYO öğrencilerinin fiziksel yeterlilikleri ne kadar önemlidir?',
      'answers': ['Çok önemlidir', 'Önemli değildir', 'Ortalama önemlidir'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'BESYO bölümü hakkında araştırma yapmanın önemi nedir?',
      'answers': [
        'Bilinçli karar vermek için önemlidir',
        'Zaman kaybıdır',
        'Hiçbir önemi yoktur'
      ],
      'correctAnswerIndex': 0,
    },
  ];

  int _currentQuestionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int selectedIndex) {
    final correctAnswerIndex =
        _questions[_currentQuestionIndex]['correctAnswerIndex'] as int;
    if (selectedIndex == correctAnswerIndex) {
      _totalScore += 3;
    } else {
      _totalScore += 1;
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  String _getResult() {
    if (_totalScore <= 5) {
      return 'BESYO hakkında daha fazla bilgi edinmeniz gerekebilir.';
    } else if (_totalScore <= 10) {
      return 'BESYO hakkında temel bilgilere sahipsiniz!';
    } else {
      return 'BESYO konusunda oldukça bilgilisiniz!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BESYO Bilgi Testi',
            style: GoogleFonts.poppins(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: _currentQuestionIndex < _questions.length
          ? Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        _questions[_currentQuestionIndex]['question'] as String,
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ...(_questions[_currentQuestionIndex]['answers']
                          as List<String>)
                      .map(
                    (answer) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Color.fromARGB(255, 255, 0, 174),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        final selectedIndex = (_questions[_currentQuestionIndex]
                                ['answers'] as List<String>)
                            .indexOf(answer);
                        _answerQuestion(selectedIndex);
                      },
                      child: Text(answer,
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )
          : _buildResultScreen(),
    );
  }

  Widget _buildResultScreen() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Test Tamamlandı!',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                _getResult(),
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              setState(() {
                _currentQuestionIndex = 0;
                _totalScore = 0;
              });
            },
            child:
                Text('Yeniden Başla', style: GoogleFonts.poppins(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
