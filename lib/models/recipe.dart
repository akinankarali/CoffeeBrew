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
    time: 3,
    title: "Akin's French Press Recipe",
    description: "This is my french press recipe",
    image: "assets/images/french-press.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 2,
    water: 300,
    coffee: 30,
    time: 12,
    title: "Aeropress Recipe",
    description: "This is my aeropress recipe",
    image: "assets/images/aeropress.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 3,
    water: 400,
    coffee: 40,
    time: 4,
    title: "Chemex Recipe",
    description: "This is my chemex recipe",
    image: "assets/images/chemex.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 4,
    water: 400,
    coffee: 30,
    time: 4,
    title: "Delter Press Recipe",
    description: "This is my delterpress recipe",
    image: "assets/images/delterpress.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 5,
    water: 400,
    coffee: 30,
    time: 4,
    title: "Kalita Wave Recipe",
    description: "This is my kalita recipe",
    image: "assets/images/kalita.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 6,
    water: 400,
    coffee: 30,
    time: 4,
    title: "V60 Recipe",
    description: "This is my v60 recipe",
    image: "assets/images/v60.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 7,
    water: 400,
    coffee: 30,
    time: 4,
    title: "Syphon Recipe",
    description: "This is my syphon recipe",
    image: "assets/images/syphon.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 8,
    water: 400,
    coffee: 30,
    time: 4,
    title: "Moka Pot Recipe",
    description: "This is my moka pot recipe",
    image: "assets/images/moka-pot.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
  Recipe(
    id: 9,
    water: 400,
    coffee: 30,
    time: 4,
    title: "Bonmac Dripper Recipe",
    description: "This is my bonmac recipe",
    image: "assets/images/bonmac.png",
    steps:
        "1.asdlkfasdfahsdf 2.asdkjfahksdfas 3.asdfjkhaksjdfghakjsdf 4.asdkfjhakjsdfhsakjdf",
  ),
];
