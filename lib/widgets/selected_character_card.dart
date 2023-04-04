import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';

class SelectedCharacterCard extends StatelessWidget {
  final CharacterModel character;

  const SelectedCharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(character.imageUrl),
          ListTile(
            title: Text(
              character.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              character.characterDetails,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
