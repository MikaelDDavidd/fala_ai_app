import 'package:fala_ai_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // remove a barra de depuração
      home: SafeArea(
        // ajusta a área de visualização abaixo da área de notificação
        child: HomePage(),
      ),
    );
  }
}
