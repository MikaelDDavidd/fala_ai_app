import 'package:fala_ai_app/models/character_model.dart';

final List<String> categories = [
  'Super-heróis',
  'Vilões',
];

final Map<String, List<CharacterModel>> characters = {
  'Super-heróis': [
    CharacterModel(
      name: 'Superman',
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/12/19/23/superhero-154540_960_720.png',
      characterDetails:
          'Superman é um personagem fictício, um super-herói que aparece nas histórias em quadrinhos americanas publicadas pela DC Comics.',
    ),
    CharacterModel(
      name: 'Homem-Aranha',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/06/23/10/47/spiderman-2439241_960_720.png',
      characterDetails:
          'Homem-Aranha é um personagem fictício, um super-herói que aparece nas histórias em quadrinhos americanas publicadas pela Marvel Comics.',
    ),
  ],
  'Vilões': [
    CharacterModel(
      name: 'Coringa',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/06/18/14/05/joker-1460224_960_720.png',
      characterDetails:
          'O Coringa é um personagem fictício, um supervilão que aparece nas histórias em quadrinhos americanas publicadas pela DC Comics.',
    ),
    CharacterModel(
      name: 'Duende Verde',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/06/17/21/16/green-goblin-2418311_960_720.png',
      characterDetails:
          'Duende Verde é um personagem fictício, um supervilão que aparece nas histórias em quadrinhos americanas publicadas pela Marvel Comics.',
    ),
  ],
};
