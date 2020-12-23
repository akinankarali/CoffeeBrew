import 'package:coffee_brew/constants.dart';
import 'package:coffee_brew/models/recipe.dart';
import 'package:coffee_brew/screens/brew/brew_screen.dart';
import 'package:coffee_brew/screens/details/components/recipe_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key, this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // it gives us total height and width
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Hero(
                    tag: '${recipe.id}',
                    child: RecipePoster(
                      size: size,
                      image: recipe.image,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    recipe.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffDD7230),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Text(
                            "Coffee ${recipe.coffee}gr",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffDD7230),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Text(
                            "Water ${recipe.water}ml",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffDD7230),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Text(
                            "Time ${recipe.time}min",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Steps: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          recipe.steps,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.only(
                left: kDefaultPadding / 2,
                top: kDefaultPadding / 2,
              ),
              icon: SvgPicture.asset(
                "assets/icons/start.svg",
                color: Colors.white,
                width: 48,
                height: 48,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BrewScreen()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
