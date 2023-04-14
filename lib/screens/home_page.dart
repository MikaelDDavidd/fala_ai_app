import 'package:flutter/material.dart';
import 'package:fala_ai_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      if (Theme.of(context).brightness == Brightness.dark) {
                        // altera para o tema light
                        ThemeModeHandler.of(context)
                            .changeMode(ThemeMode.light);
                      } else {
                        // altera para o tema dark
                        ThemeModeHandler.of(context).changeMode(ThemeMode.dark);
                      }
                    },
                    icon: Icon(
                      Theme.of(context).brightness == Brightness.dark
                          ? Icons.wb_sunny
                          : Icons.nights_stay,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const Text(
                "Fala Aí App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Column(
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
                        _selectedCharacter = characters[_selectedCategory]![0];
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
