import 'package:flutter/material.dart';
import 'calculation-logic/financial_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veridion Finance Monitor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Veridion Finance Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FinancialCalculator _calculator = FinancialCalculator();
  String _message = '';
  double _interestResult = 0.0;

  void _runLogic() {
    setState(() {
      _message = _calculator.getGreeting();
      _interestResult = _calculator.calculateSimpleInterest(1000, 5, 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              _message.isEmpty ? 'Press the button to test logic' : _message,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
             if (_message.isNotEmpty)
              Text(
                'Calculated Interest (1000, 5%, 2yrs): $_interestResult',
                 style: Theme.of(context).textTheme.bodyMedium,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _runLogic,
        tooltip: 'Run Logic',
        child: const Icon(Icons.calculate),
      ),
    );
  }
}
