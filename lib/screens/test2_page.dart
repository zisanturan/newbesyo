import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(PeInfoQuizApp());
}

class PeInfoQuizApp extends StatelessWidget {
  const PeInfoQuizApp({super.key});

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
      'question': 'Beden eğitimi nedir?',
      'answers': [
        'Fiziksel aktiviteler ve spor eğitimi',
        'Bir okul dersi',
        'Sadece spor yapma alanı'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Beden eğitimi öğretmeni hangi alanlarda görev alır?',
      'answers': [
        'Spor salonları, okullar, özel kurslar',
        'Sadece spor salonlarında',
        'Eğitim alanlarında çalışmaz'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Beden eğitimi dersinin amacı nedir?',
      'answers': [
        'Fiziksel sağlık ve takım çalışmasını geliştirmek',
        'Sadece spor becerilerini artırmak',
        'Sağlık için hiçbir faydası yoktur'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Beden eğitimi öğretmeninin hangi becerilere sahip olması gerekir?',
      'answers': [
        'İletişim, liderlik ve eğitici beceriler',
        'Sadece spor bilgisi',
        'Hiçbir özel beceriye sahip olmamalıdır'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Beden eğitimi dersinde hangi aktiviteler yapılır?',
      'answers': [
        'Koşu, basketbol, voleybol, futbol',
        'Sadece teorik dersler verilir',
        'Hiçbir fiziksel aktivite yapılmaz'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Beden eğitimi derslerinin öğrencilere sağladığı faydalar nelerdir?',
      'answers': [
        'Fiziksel sağlığı artırmak, psikolojik gelişim sağlamak',
        'Sadece kas gücünü artırmak',
        'Hiçbir faydası yoktur'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Beden eğitimi eğitimi almak hangi alanlarda iş fırsatları sunar?',
      'answers': [
        'Okullar, spor salonları, antrenörlük',
        'Sadece spor salonlarında çalışılır',
        'Hiçbir iş fırsatı sunmaz'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Beden eğitimi hangi yaş gruplarına hitap eder?',
      'answers': [
        'Tüm yaş gruplarına',
        'Sadece çocuklar ve gençler',
        'Sadece yetişkinler'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Beden eğitimi öğretmeni olmak için hangi eğitim gereklidir?',
      'answers': [
        'Beden eğitimi öğretmenliği bölümü mezuniyeti',
        'Yüksek lisans eğitimi',
        'Hiçbir eğitim gerekmemektedir'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Beden eğitimi derslerinde öğrencilerin hangi becerileri geliştirilir?',
      'answers': [
        'Fiziksel beceriler, takım çalışması, liderlik',
        'Sadece teorik bilgi',
        'Hiçbir beceri geliştirilmez'
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
      return 'Beden eğitimi hakkında daha fazla bilgi edinmeniz gerekebilir.';
    } else if (_totalScore <= 10) {
      return 'Beden eğitimi hakkında temel bilgilere sahipsiniz!';
    } else {
      return 'Beden eğitimi konusunda oldukça bilgilisiniz!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beden Eğitimi Bilgi Testi',
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
