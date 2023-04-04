import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';
import 'package:fala_ai_app/widgets/selected_character_card.dart';
import 'package:fala_ai_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Character> _characters;
  late List<String> _categories;
  late String _selectedCategory;
  late String _selectedCharacter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Fala Aí App',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          DropdownButton(
            value: _selectedCategory,
            items: categories.map((category) {
              return DropdownMenuItem(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value.toString();
                _selectedCharacter = characters
                    .where((character) =>
                        character.categories == _selectedCategory)
                    .first
                    .name;
              });
            },
          ),
          const SizedBox(height: 16.0),
          DropdownButton(
            value: _selectedCharacter,
            items: characters
                .where((character) => character.categories == _selectedCategory)
                .map((character) {
              return DropdownMenuItem(
                value: character.name,
                child: Text(character.name),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCharacter = value.toString();
              });
            },
          ),
          const SizedBox(height: 16.0),
          SelectedCharacterCard(
            character: characters
                .where((character) => character.name == _selectedCharacter)
                .first,
          ),
        ],
      ),
    );
  }
}
