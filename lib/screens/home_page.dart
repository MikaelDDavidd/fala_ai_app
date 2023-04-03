import 'package:flutter/material.dart';
import 'package:fala_ai_app/utils/constants.dart';
import 'package:fala_ai_app/utils/tts_service.dart';
import 'package:fala_ai_app/models/character_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<String> _categories;
  late Map<String, List<String>> _characters;
  String _selectedCategory = '';
  String _selectedCharacter = '';
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _categories = Constants.categories;
    _characters = Constants.characters;
    _selectedCategory = _categories.first;
    _selectedCharacter = _characters[_selectedCategory]!.first;
  }

  void _onCategoryChanged(String category) {
    setState(() {
      _selectedCategory = category;
      _selectedCharacter = _characters[_selectedCategory]!.first;
    });
  }

  void _onCharacterChanged(String character) {
    setState(() {
      _selectedCharacter = character;
    });
  }

  void _generateAudio() async {
    await TtsService.generateAudio(_textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Fala AI',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: _selectedCategory,
                  onChanged: _onCategoryChanged,
                  items: _categories.map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  value: _selectedCharacter,
                  onChanged: _onCharacterChanged,
                  items:
                      _characters[_selectedCategory]!.map((String character) {
                    return DropdownMenuItem<String>(
                      value: character,
                      child: Text(character),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: Column(
                children: [
                  Image.network(
                    Constants.characterImages[_selectedCharacter]!,
                    height: 150,
                  ),
                  SizedBox(height: 10),
                  Text(
                    _selectedCharacter,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    Constants.characterDescriptions[_selectedCharacter]!,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o texto para gerar áudio',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _generateAudio,
              child: Text('Gerar áudio'),
            ),
          ],
        ),
      ),
    );
  }
}
