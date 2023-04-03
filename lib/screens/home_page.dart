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
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(height: 35),
          const Text(
            'Selecione a categoria',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          DropdownButton<String>(
            value: _selectedCategory,
            onChanged: (String? newValue) {
              setState(() {
                _selectedCategory = newValue!;
                _selectedCharacter = characters[_selectedCategory]![0];
              });
            },
            items: categories.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 32),
          const Text(
            'Selecione o personagem',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          DropdownButton<String>(
            value: _selectedCharacter,
            onChanged: (String? newValue) {
              setState(() {
                _selectedCharacter = newValue!;
              });
            },
            items: characters[_selectedCategory]!
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 32),
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
    ));
  }
}
