class Ingredient {
  String name;
  String nationality;
  String team;
  int age;
  int jerseyNo;

  Ingredient(
    this.name,
    this.nationality,
    this.team,
    this.age,
    this.jerseyNo,
  );
}

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'Chama jr',
      'assets/chamajr.jpg',
      5,
      [
        Ingredient('Chama jr', 'Zambia', 'Yanga', 34, 17),
      ],
    ),
    Recipe(
      'Aziz Ki',
      'assets/azizki.jpg',
      5,
      [
        Ingredient('Aziz Ki', 'Burkina Faso', 'Yanga SC', 28, 10),
      ],
    ),
    Recipe(
      'Beno Kakolanya',
      'assets/benokakolanya.jpg',
      5,
      [
        Ingredient('Beno Kakolanya', 'Tanzania', 'Simba SC', 32, 12),
      ],
    ),
    Recipe(
      'Kapombe Shomari',
      'assets/kapombeshomari.jpg',
      5,
      [
        Ingredient('Shomari Kapombe', 'Tanzania', 'Simba SC', 27, 13),
      ],
    ),
    Recipe(
      'Mohamed Husen',
      'assets/mohamedhusen.jpg',
      5,
      [
        Ingredient('Mohamed Husen', 'Tanzania', 'Simba SC', 26, 14),
      ],
    ),
    Recipe(
      'Pacome',
      'assets/pacome.jpg',
      5,
      [
        Ingredient('name: Pacome', 'Nationality: Ivory Coast', 'Team:Yanga SC', 29, 15),
      ],
    ),
  ];
}
