import 'package:flutter/material.dart';
import 'package:food_bank/screens/firstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Bank',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 1, 27)),
        textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
        useMaterial3: true,
      ),
      home: FirstScreen(),
    );
  }
}
