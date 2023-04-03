import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[900], // Definindo cor de fundo
          child: const Stack(
            children: [
              Positioned(
                top: 50,
                left: 20,
                child: Text(
                  'Falatron',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
