import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: KBackgroundColor,
        ),
        // primaryColor: Colors.white,
        scaffoldBackgroundColor: KBackgroundColor,
      ),
      home: const InputPage(),
    );
  }
}
