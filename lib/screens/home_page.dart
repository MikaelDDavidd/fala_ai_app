import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';
import 'package:fala_ai_app/utils/constants.dart';
import 'package:fala_ai_app/widgets/selected_character_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCategory = categories.keys.first;
  String _selectedCharacter = characters[categories.keys.first].first.name;

  void _onCategoryChanged(String category) {
    setState(() {
      _selectedCategory = category;
      _selectedCharacter = characters[category].first.name;
    });
  }

  void _onCharacterChanged(String character) {
    setState(() {
      _selectedCharacter = character;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Character> charactersList = characters[_selectedCategory];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fala Aí App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: _selectedCategory,
              items: categories.keys
                  .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: _onCategoryChanged,
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedCharacter,
              items: charactersList
                  .map((character) => DropdownMenuItem<String>(
                        value: character.name,
                        child: Text(character.name),
                      ))
                  .toList(),
              onChanged: _onCharacterChanged,
            ),
            SizedBox(height: 16.0),
            SelectedCharacterCard(
              character: charactersList.firstWhere(
                  (character) => character.name == _selectedCharacter),
            ),
          ],
        ),
      ),
    );
  }
}
