import 'package:coffee_brew/models/recipe.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key key,
    this.itemIndex,
    this.recipe,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Recipe recipe;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        //color: kYellowDarkColor,
        height: 100,
        child: InkWell(
          onTap: press,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color(0xffDD7230),
                    boxShadow: [kDefaultShadow]),
              ),
              Positioned(
                top: 8,
                right: 0,
                child: Hero(
                  tag: '${recipe.id}',
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 80,
                    width: 120,
                    child: Image.asset(
                      recipe.image,
                      fit: BoxFit.cover,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: 100,
                  width: size.width - 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding / 2),
                        child: Text(
                          recipe.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16,
                        ),
                        padding: EdgeInsets.all(kDefaultPadding / 4),
                        child: Text(
                          recipe.description,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
