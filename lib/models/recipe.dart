class Recipe {
  final int id, water, coffee, time;
  final String title, description, image, steps;

  Recipe(
      {this.id,
      this.water,
      this.coffee,
      this.time,
      this.title,
      this.description,
      this.image,
      this.steps});
}

List<Recipe> recipes = [
  Recipe(
    id: 1,
    water: 275,
    coffee: 15,
    time: 360000,
    title: "Akin's French Press Recipe",
    description: "This is my french press recipe",
    image: "assets/images/FrenchPress.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 2,
    water: 300,
    coffee: 30,
    time: 120000,
    title: "Aeropress Recipe",
    description: "This is my aeropress recipe",
    image: "assets/images/Aeropress.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 3,
    water: 400,
    coffee: 40,
    time: 400000,
    title: "Chemex Recipe",
    description: "This is my chemex recipe",
    image: "assets/images/Chemex.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 4,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "Delter Press Recipe",
    description: "This is my delterpress recipe",
    image: "assets/images/Delterpress.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 5,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "Kalita Wave Recipe",
    description: "This is my kalita recipe",
    image: "assets/images/KalitaWave.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 6,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "V60 Recipe",
    description: "This is my v60 recipe",
    image: "assets/images/V60.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 7,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "Syphon Recipe",
    description: "This is my syphon recipe",
    image: "assets/images/Syphon.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 8,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "Moka Pot Recipe",
    description: "This is my moka pot recipe",
    image: "assets/images/MokaPot.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 9,
    water: 400,
    coffee: 30,
    time: 400000,
    title: "Bonmac Dripper Recipe",
    description: "This is my bonmac recipe",
    image: "assets/images/BonmacDripper.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
];
