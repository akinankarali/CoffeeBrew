class Recipe {
  final int id, water, coffee, time;
  final String title, description, image;

  Recipe(
      {this.id,
      this.water,
      this.coffee,
      this.time,
      this.title,
      this.description,
      this.image});
}

List<Recipe> recipes = [
  Recipe(
      id: 1,
      water: 275,
      coffee: 15,
      time: 360000,
      title: "Akin's Recipe",
      description: "This is my french press recipe",
      image: "assets/images/FrenchPress.png"),
  Recipe(
      id: 2,
      water: 300,
      coffee: 30,
      time: 120000,
      title: "Aeropress Recipe",
      description: "This is my aeropress recipe",
      image: "assets/images/Aeropress.png"),
  Recipe(
      id: 3,
      water: 400,
      coffee: 30,
      time: 400000,
      title: "Chemex Recipe",
      description: "This is my chemex recipe",
      image: "assets/images/Chemex.png"),
];
