import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final String categories;

  const Character({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.categories,
  });
}

const List<Character> dcCharacters = [
  Character(
    name: 'Superman',
    imagePath:
        'https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/CharThumb_215x215_SUPERMAN_57b16f43d3f3c3.10580054.jpg?itok=FySvkj3M',
    description:
        'Superman is a fictional superhero. The character was created by writer Jerry Siegel and artist Joe Shuster, and first appeared in Action Comics #1, a comic book published on April 18, 1938.',
    categories: 'DC',
  ),
  Character(
    name: 'Batman',
    imagePath:
        'https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/CharThumb_215x215_BATMAN_57b16f41836ae9.43122231.jpg?itok=XOCgYyjQ',
    description:
        'Batman is a fictional superhero. The character was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27, a comic book published on March 30, 1939.',
    categories: 'DC',
  ),
];

const List<Character> marvelCharacters = [
  Character(
    name: 'Iron Man',
    imagePath:
        'https://terrigen-cdn-dev.marvel.com/content/prod/1x/002irm_ons_crd_03.jpg',
    description:
        'Batman is a fictional superhero. The character was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27, a comic book published on March 30, 1939.',
    categories: 'Marvel',
  ),
];
