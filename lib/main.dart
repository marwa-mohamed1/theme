import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      theme: ThemeData(
        primaryColor: Colors.brown[300],
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
