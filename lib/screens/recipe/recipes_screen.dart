import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Select Your Recipe'),
      centerTitle: false,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/add.svg",
            color: Colors.white,
            width: 18,
            height: 18,
          ),
          onPressed: () => {},
        )
      ],
    );
  }
}
