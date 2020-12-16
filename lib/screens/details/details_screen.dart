import 'package:coffee_brew/constants.dart';
import 'package:coffee_brew/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key, this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        recipe: recipe,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding / 2),
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
          width: 24,
          height: 24,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "Back".toUpperCase(),
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 16,
        ),
      ),
    );
  }
}
