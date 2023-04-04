import 'package:flutter/material.dart';
import 'package:fala_ai_app/models/character_model.dart';

class SelectedCharacterCard extends StatelessWidget {
  final Character character;

  const SelectedCharacterCard({required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            character.imageUrl,
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  character.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
