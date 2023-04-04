import 'package:flutter/material.dart';
import 'package:fala_ai_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCategory;
  String _selectedCharacter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              Constants.appName,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24.0),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: 'Categoria',
                border: OutlineInputBorder(),
              ),
              value: _selectedCategory,
              items: Constants.categories.map((category) {
                return DropdownMenuItem(
                  child: Text(category),
                  value: category,
                );
              }).toList(),
              onChanged: (category) {
                setState(() {
                  _selectedCategory = category;
                  _selectedCharacter = null;
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: 'Personagem',
                border: OutlineInputBorder(),
              ),
              value: _selectedCharacter,
              items: Constants.characters[_selectedCategory].map((character) {
                return DropdownMenuItem(
                  child: Text(character),
                  value: character,
                );
              }).toList(),
              onChanged: (character) {
                setState(() {
                  _selectedCharacter = character;
                });
              },
            ),
            const Spacer(),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    child: Text('Sobre o App'),
                  ),
                  const PopupMenuItem(
                    child: Text('Avaliar o App'),
                  ),
                ];
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
