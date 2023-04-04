import 'package:fala_ai_app/models/character_model.dart';

class Constants {
  static const String appTitle = 'Fala Aí App';

  static const List<String> categories = ['DC Comics', 'Marvel'];

  static const List<Character> characters = [
    Character(
      name: 'Batman',
      description:
          'Bruce Wayne é um empresário, playboy, filantropo e bilionário proprietário da Wayne Enterprises, que costuma combater o crime em Gotham City como o vigilante mascarado Batman.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/pt/8/8a/Batman_DC_Comics.png',
      category: 'DC Comics',
    ),
    Character(
      name: 'Superman',
      description:
          'Clark Kent é um personagem fictício, um super-herói que aparece nos quadrinhos americanos publicados pela DC Comics, sendo um dos personagens mais importantes e famosos da editora.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/pt/e/eb/Superman_DC_Comics.png',
      category: 'DC Comics',
    ),
    Character(
      name: 'Mulher Maravilha',
      description:
          'Diana Prince, conhecida também como Mulher Maravilha, é uma personagem fictícia de histórias em quadrinhos publicadas pela editora estadunidense DC Comics.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/pt/1/15/Wonder_Woman_DC_Comics.png',
      category: 'DC Comics',
    ),
    Character(
      name: 'Homem de Ferro',
      description:
          'Anthony Edward "Tony" Stark é um personagem fictício dos quadrinhos publicados pela Marvel Comics. Sua identidade secreta é a de um empresário e bilionário que também fabrica armas e equipamentos militares.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/pt/e/e0/Iron_Man_bleeding_edge.jpg',
      category: 'Marvel',
    ),
    Character(
      name: 'Capitão América',
      description:
          'Steve Rogers é um personagem fictício de histórias em quadrinhos da Marvel Comics. Foi criado por Joe Simon e Jack Kirby, aparecendo pela primeira vez em Captain America Comics #1 em 1941.',
      imagePath:
          'https://upload.wikimedia.org/wikipedia/pt/3/37/Capit%C3%A3o_Am%C3%A9rica_Marvel_Comics.png',
      category: 'Marvel',
    ),
    Character(
      name: 'Homem-Aranha',
      description:
          'Homem-Aranha é um personagem fictício, um super-herói que aparece nas revistas em quadrinhos (banda desenhada, em Portugal) americanas publicadas pela Marvel Comics, existindo no seu universo partilhado.',
      imagePath: 'https://upload.wikimedia.org/wikipedia/pt/2/28/Spiderman.jpg',
      category: 'Marvel',
    ),
  ];
}
