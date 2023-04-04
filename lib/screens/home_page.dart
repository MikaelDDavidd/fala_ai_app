// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';
import 'package:fala_ai_app/widgets/selected_character_card.dart';
import 'package:fala_ai_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _selectedCategory;
  late CharacterModel _selectedCharacter;
  late String _characterDetails;

  @override
  void initState() {
    super.initState();
    _selectedCategory = categories.first;
    _selectedCharacter = characters[_selectedCategory]![0];
    _characterDetails = _selectedCharacter.characterDetails;
  }

  void _onCategoryChanged(String category) {
    setState(() {
      _selectedCategory = category;
      _selectedCharacter = characters[_selectedCategory]![0];
      _characterDetails = _selectedCharacter.characterDetails;
    });
  }

  void _onCharacterChanged(CharacterModel character) {
    setState(() {
      _selectedCharacter = character;
      _characterDetails = _selectedCharacter.characterDetails;
    });
  }

  Widget _buildCategoryDropdown() {
    return DropdownButton<String>(
      value: _selectedCategory,
      items: categories.map((category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: _onCategoryChanged,
    );
  }

  Widget _buildCharacterDropdown() {
    return DropdownButton<CharacterModel>(
      value: _selectedCharacter,
      items: characters[_selectedCategory]!.map((character) {
        return DropdownMenuItem<CharacterModel>(
          value: character,
          child: Text(character.name),
        );
      }).toList(),
      onChanged: _onCharacterChanged,
    );
  }

  Widget _buildCharacterCard() {
    final character = _selectedCharacter;
    return SelectedCharacterCard(
      name: character.name,
      imageUrl: character.imageUrl,
      characterDetails: character.characterDetails,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Fala aí!',
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              _buildCategoryDropdown(),
              const SizedBox(height: 16.0),
              _buildCharacterDropdown(),
              const SizedBox(height: 16.0),
              _buildCharacterCard(),
            ],
          ),
        ),
      ),
    );
  }
}
