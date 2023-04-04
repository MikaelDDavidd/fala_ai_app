class Constants {
  static const List<String> categories = [
    "Comics",
    "Movies",
  ];

  static const Map<String, List<Map<String, String>>> characters = {
    "Comics": [
      {
        "name": "Spider-Man",
        "imageUrl": "https://i.imgur.com/yW2W9hD.png",
        "details":
            "Peter Parker was bitten by a radioactive spider and gained the abilities of a spider, such as super strength, agility, and the ability to climb walls.",
      },
      {
        "name": "Iron Man",
        "imageUrl": "https://i.imgur.com/8F2gsDm.png",
        "details":
            "Tony Stark created a suit of powered armor that gives him superhuman strength and the ability to fly. He uses his suit to fight crime and protect the world.",
      },
    ],
    "Movies": [
      {
        "name": "Captain America",
        "imageUrl": "https://i.imgur.com/Fa3q4F7.png",
        "details":
            "Steve Rogers was a frail young man who was transformed into a super soldier by a secret serum. He fights for the American ideals of freedom and justice as Captain America.",
      },
      {
        "name": "Thor",
        "imageUrl": "https://i.imgur.com/2NLO16j.png",
        "details":
            "Thor is the Asgardian god of thunder, and possesses immense physical strength, durability, and the ability to summon lightning at will.",
      },
    ],
  };
}
