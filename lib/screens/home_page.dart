import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';
import 'package:fala_ai_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedCategory;
  String? _selectedCharacter;

  List<String> get _charactersList => _selectedCategory != null
      ? categoriesAndCharacters[_selectedCategory]!
      : [];

  Character? get _selectedCharacterData => _selectedCharacter != null
      ? Character(
          name: _selectedCharacter!,
          imageUrl: "https://via.placeholder.com/150",
          description: "Descrição do personagem $_selectedCharacter",
        )
      : null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Fala Aí!",
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
      DropdownButton<String>(
        value: _selectedCategory,
        hint: const Text("Selecione uma categoria"),
        onChanged: (value) {
          setState(() {
            _selectedCategory = value;
            _selectedCharacter = null;
          });
        },
        items: categoriesAndCharacters.keys
            .map((category) => DropdownMenuItem(
                  value: category,
                  child: Text(category),
                ))
            .toList(),
      ),
      const SizedBox(height: 10),
      DropdownButton<String>(
        value: _selectedCharacter,
        hint: const Text("Selecione um personagem"),
        onChanged: (value) {
          setState(() {
            _selectedCharacter = value;
          });
        },
        items: _charactersList
            .map((character) => DropdownMenuItem(
                  value: character,
                  child: Text(character),
                ))
            .toList(),
      ),
      const SizedBox(height: 20),
      if (_selectedCharacterData != null)
        SelectedCharacterCard(character: selectedCharacter!),
    ])));
  }
}
