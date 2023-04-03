import 'package:fala_ai_app/screens/home_page.dart';
import 'package:fala_ai_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fala Aí',
      routes: {
        '/': (context) => const SplashScreen(),
      },
    );
  }
}
