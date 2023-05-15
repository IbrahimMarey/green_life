import 'package:flutter/material.dart';
import 'package:green_life/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:green_life/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  OnBoardingScreen(),
    );
  }
}
