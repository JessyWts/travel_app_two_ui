import 'package:flutter/material.dart';
import 'package:travel_app_two_ui/screens/home_screen.dart';

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
      title: 'Travel Ui Ttwo',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: const Color(0xFFD8ECF1)
        ),
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}