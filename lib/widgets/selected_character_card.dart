import 'package:flutter/material.dart';
import 'package:fala_ai_app/utils/constants.dart';

class SelectedCharacterCard extends StatelessWidget {
  const SelectedCharacterCard({Key? key, required this.character})
      : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            character.imagePath,
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
