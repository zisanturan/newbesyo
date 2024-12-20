import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Test için örnek bir widget oluştur
    await tester.pumpWidget(MaterialApp(home: CounterWidget()));

    // Sayacın başlangıçta 0 olduğunu doğrula
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // '+' butonuna tıkla ve yeniden oluştur
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Sayacın 1 olduğunu doğrula
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Test')),
      body: Center(child: Text('$_counter', style: TextStyle(fontSize: 24))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
