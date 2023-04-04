import 'package:fala_ai_app/models/character_model.dart';

Map<String, List<Character>> charactersByCategory = {
  "Comics": [
    Character(
        name: "Spider-Man",
        description:
            "Peter Parker was bitten by a radioactive spider as a teenager, granting him spider-like powers. After the death of his Uncle Ben, Peter learned that with great power comes great responsibility, and vowed to use his powers to help people. Peter Parker became the Amazing Spider-Man!",
        imagePath: "assets/images/spider_man.jpg"),
    Character(
        name: "Iron Man",
        description:
            "Tony Stark is a genius inventor who uses his wealth and technical expertise to fight crime as the armored superhero Iron Man.",
        imagePath: "assets/images/iron_man.jpg"),
    Character(
        name: "Captain America",
        description:
            "Steve Rogers volunteers to participate in an experimental program that turns him into the Super Soldier known as Captain America.",
        imagePath: "assets/images/captain_america.jpg"),
  ],
  "Movies": [
    Character(
        name: "Black Panther",
        description:
            "T'Challa is the Black Panther, king of Wakanda, one of the most technologically advanced nations on Earth. He is among the top intellects and martial artists of the world, a veteran Avenger, and a member of the Illuminati.",
        imagePath: "assets/images/black_panther.jpg"),
    Character(
        name: "Thor",
        description:
            "Thor Odinson wields the power of the ancient Asgardians to fight evil throughout the Nine Realms and beyond!",
        imagePath: "assets/images/thor.jpg"),
    Character(
        name: "Hulk",
        description:
            "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he's always been and the uncontrollable green monster powered by his rage.",
        imagePath: "assets/images/hulk.jpg"),
  ],
};
