import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DynamicQuizApp());
}

class DynamicQuizApp extends StatelessWidget {
  const DynamicQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 0, 64, 255),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color.fromARGB(255, 23, 73, 173),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(), // Google Fonts uygulandı
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
      'question': 'Takım sporlarını sever misiniz?',
      'score': [3, 1]
    },
    {
      'question': 'Dayanıklılık gerektiren sporları tercih eder misiniz?',
      'score': [2, 1]
    },
    {
      'question': 'Hız gerektiren aktivitelerde başarılı mısınız?',
      'score': [3, 1]
    },
    {
      'question': 'Esneklik gerektiren sporlara yatkınlığınız var mı?',
      'score': [2, 1]
    },
    {
      'question': 'Kuvvet egzersizlerinden hoşlanır mısınız?',
      'score': [3, 1]
    },
    {
      'question': 'Uzun mesafe koşuları tercih eder misiniz?',
      'score': [3, 1]
    },
    {
      'question': 'Bireysel sporlar sizin için daha cazip mi?',
      'score': [2, 1]
    },
    {
      'question': 'Rekabetçi bir ortamda çalışmayı sever misiniz?',
      'score': [3, 1]
    },
    {
      'question': 'Koordinasyon gerektiren aktivitelerde başarılı mısınız?',
      'score': [3, 1]
    },
    {
      'question': 'Aerobik egzersizleri düzenli olarak yapıyor musunuz?',
      'score': [2, 1]
    },
    {
      'question': 'Kısa süreli yoğun aktiviteler sizin için uygun mu?',
      'score': [3, 1]
    },
    {
      'question': 'Yüzme sporuna ilgiliniz var mı?',
      'score': [3, 1]
    },
    {
      'question': 'Basketbol gibi hızlı oyunları sever misiniz?',
      'score': [3, 1]
    },
    {
      'question': 'Yoga ve pilates gibi sporlara yatkınlığınız var mı?',
      'score': [2, 1]
    },
    {
      'question': 'Vücut geliştirme sizin ilginizi çeker mi?',
      'score': [3, 1]
    },
    {
      'question': 'Bir takımın lideri olarak çalışmayı sever misiniz?',
      'score': [3, 1]
    },
    {
      'question': 'Spor aktivitelerinde motivasyonunuz yüksek mi?',
      'score': [3, 1]
    },
    {
      'question':
          'Fiziksel kondisyonunuzu sürekli geliştirmeye çalışıyor musunuz?',
      'score': [2, 1]
    },
    {
      'question': 'Spor yaparken eğlenmek sizin için önemli mi?',
      'score': [3, 1]
    },
    {
      'question': 'Futbol gibi strateji gerektiren sporlarda başarılı mısınız?',
      'score': [3, 1]
    },
  ];
  int _currentQuestionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _currentQuestionIndex++;
    });
  }

  String _getResult() {
    if (_totalScore <= 5) {
      return 'Yoga, Pilates veya Esneklik Gerektiren Sporlar Size Uygun!';
    } else if (_totalScore <= 10) {
      return 'Koşu, Fitness ve Aerobik Egzersizler Sizin İçin İdeal!';
    } else {
      return 'Basketbol, Futbol gibi Takım Sporlarında Başarılı Olabilirsiniz!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BESYO Kişilik Testi',
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Color.fromARGB(255, 188, 42, 183),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () => _answerQuestion(
                        (_questions[_currentQuestionIndex]['score']
                            as List<int>)[0]),
                    child: Text('Evet',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Color.fromARGB(255, 0, 64, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () => _answerQuestion(
                        (_questions[_currentQuestionIndex]['score']
                            as List<int>)[1]),
                    child: Text('Hayır',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white)),
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
