import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(SportsPsychologyQuizApp());
}

class SportsPsychologyQuizApp extends StatelessWidget {
  const SportsPsychologyQuizApp({super.key});

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
      'question': 'Spor psikolojisi nedir?',
      'answers': [
        'Sporcuların mental durumları ve performanslarını inceleyen bilim dalı',
        'Spor dallarının kuralları',
        'Spor eğitiminin fiziksel tarafı'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Spor psikolojisi hangi alanlarda kullanılır?',
      'answers': [
        'Sadece profesyonel sporcular',
        'Profesyonel sporcular ve amatör sporcular',
        'Sadece spor salonlarında'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'Sporcuların mental sağlığı ne kadar önemlidir?',
      'answers': [
        'Çok önemlidir',
        'Önemli değildir',
        'Sadece büyük turnuvalarda önemlidir'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Hangi faktörler bir sporcunun mental durumunu etkiler?',
      'answers': [
        'Sporcuya özgü kişilik özellikleri, stres, takım içi ilişkiler',
        'Yalnızca fiziksel sağlığı',
        'Hava durumu ve diğer dış faktörler'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Mental antrenman nedir?',
      'answers': [
        'Sporcuların zihinsel güçlerini artırmaya yönelik yapılan egzersizler',
        'Fiziksel antrenman programı',
        'Beslenme düzeni'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Sporcuların motivasyonunu artıran en etkili faktör nedir?',
      'answers': [
        'Pozitif geri bildirim ve hedefler',
        'Zorluklar ve cezalar',
        'Açık hava aktiviteleri'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Stres ile başa çıkmak için hangi teknikler kullanılabilir?',
      'answers': [
        'Meditasyon, nefes egzersizleri, görselleştirme',
        'Kafeste kalmak, yalnız kalmak',
        'Çok fazla çalışmak'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Sporcuların odaklanma becerisi neden önemlidir?',
      'answers': [
        'Yüksek performans için gereklidir',
        'Vücut sağlığını artırır',
        'Sadece dinlenme için gereklidir'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Takım sporlarında psikolojik dayanıklılık neden önemlidir?',
      'answers': [
        'Takımın motivasyonunu artırarak başarıyı sağlar',
        'Bireysel başarıyı artırır',
        'Hiçbir etkisi yoktur'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Spor psikolojisi eğitimi kimler için gereklidir?',
      'answers': [
        'Herkes için',
        'Sadece profesyonel sporcular için',
        'Yalnızca psikologlar için'
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
      return 'Spor psikolojisi hakkında daha fazla bilgi edinmeniz gerekebilir.';
    } else if (_totalScore <= 10) {
      return 'Spor psikolojisi hakkında temel bilgilere sahipsiniz!';
    } else {
      return 'Spor psikolojisi konusunda oldukça bilgilisiniz!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spor Psikolojisi Bilgi Testi',
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
