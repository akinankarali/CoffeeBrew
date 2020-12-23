import 'package:coffee_brew/constants.dart';
import 'package:coffee_brew/models/recipe.dart';
import 'package:coffee_brew/screens/details/details_screen.dart';
import 'package:coffee_brew/screens/recipe/components/recipe_card.dart';
import "package:flutter/material.dart";

import 'method_list.dart';

class Body extends StatelessWidget {
  const Body({Key key, this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Methodlist(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) => RecipeCard(
                  itemIndex: index,
                  recipe: recipes[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                recipe: recipes[index],
                              )),
                    );
                  },
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
