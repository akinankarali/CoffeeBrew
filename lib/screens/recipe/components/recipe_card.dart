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
                    color: Colors.white70,
                    boxShadow: [kDefaultShadow]),
              ),
              Positioned(
                top: -4,
                right: 0,
                child: Hero(
                  tag: '${recipe.id}',
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 100,
                    width: 140,
                    child: Image.asset(
                      recipe.image,
                      fit: BoxFit.cover,
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
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 16,
                        ),
                        padding: EdgeInsets.all(kDefaultPadding / 4),
                        child: Text(
                          recipe.description,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 4,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
                        child: Text(
                          "Coffee: ${recipe.coffee}gr",
                          style: Theme.of(context).textTheme.button,
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
