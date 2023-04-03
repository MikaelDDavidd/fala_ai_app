import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/app_icon.png',
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Fala Aí App',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32.0),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Categoria',
            ),
            value: _selectedCategory,
            onChanged: (newValue) {
              setState(() {
                _selectedCategory = newValue;
              });
            },
            items: _categories.map((category) {
              return DropdownMenuItem(
                value: category,
                child: Text(category),
              );
            }).toList(),
          ),
          const SizedBox(height: 16.0),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Personagem da Fala',
            ),
            value: _selectedCharacter,
            onChanged: (newValue) {
              setState(() {
                _selectedCharacter = newValue;
              });
            },
            items: _characters.map((character) {
              return DropdownMenuItem(
                value: character,
                child: Text(character),
              );
            }).toList(),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            maxLines: 5,
            maxLength: 300,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite o texto',
            ),
            onChanged: (value) {
              setState(() {
                _inputText = value;
              });
            },
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Gerar Áudio'),
          ),
        ],
      ),
    ),
  );
}

