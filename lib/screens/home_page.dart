import 'package:flutter/material.dart';
import 'package:fala_ai_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _selectedCategory;
  late String _selectedCharacter;
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedCategory = categories[0];
    _selectedCharacter = characters[_selectedCategory]![0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    "Fala Aí App",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Selecione a categoria:",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        DropdownButton<String>(
                          value: _selectedCategory,
                          items: categories
                              .map((category) => DropdownMenuItem<String>(
                                    value: category,
                                    child: Text(category),
                                  ))
                              .toList(),
                          onChanged: (category) {
                            setState(() {
                              _selectedCategory = category!;
                              _selectedCharacter =
                                  characters[_selectedCategory]![0];
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Selecione o personagem:",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        DropdownButton<String>(
                          value: _selectedCharacter,
                          items: characters[_selectedCategory]!
                              .map((character) => DropdownMenuItem<String>(
                                    value: character,
                                    child: Text(character),
                                  ))
                              .toList(),
                          onChanged: (character) {
                            setState(() {
                              _selectedCharacter = character!;
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: myController,
                          maxLength: 300,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Digite a fala',
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Gerar áudio"),
                        )
                      ],
                    ),
                  ),
                ])));
  }
}
