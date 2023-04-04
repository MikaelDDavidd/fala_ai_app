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
  String _selectedCategory;
  String _selectedCharacter;

  List<String> _getCategories() {
    return categories.keys.toList();
  }

  List<String> _getCharacters() {
    return categories[_selectedCategory];
  }

  Widget _buildDropdownCategories() {
    return DropdownButton(
      value: _selectedCategory,
      items: _getCategories().map((category) {
        return DropdownMenuItem(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedCategory = value;
          _selectedCharacter = null;
        });
      },
      hint: const Text('Selecione uma categoria'),
    );
  }

  Widget _buildDropdownCharacters() {
    return DropdownButton(
      value: _selectedCharacter,
      items: _getCharacters()?.map((character) {
            return DropdownMenuItem(
              value: character,
              child: Text(character),
            );
          })?.toList() ??
          [],
      onChanged: (value) {
        setState(() {
          _selectedCharacter = value;
        });
      },
      hint: const Text('Selecione um personagem'),
    );
  }

  Widget _buildSelectedCharacterCard() {
    if (_selectedCharacter != null) {
      Character character = Character(
        name: _selectedCharacter,
        description: characters[_selectedCharacter],
        imagePath: characterImages[_selectedCharacter],
      );
      return SelectedCharacterCard(character: character);
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedCategory = _getCategories().first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fala aí!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Escolha uma categoria e um personagem',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildDropdownCategories(),
            const SizedBox(height: 20),
            _buildDropdownCharacters(),
            const SizedBox(height: 20),
            _buildSelectedCharacterCard(),
          ],
        ),
      ),
    );
  }
}
