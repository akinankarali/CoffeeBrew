import 'package:coffee_brew/screens/brew/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BrewScreen extends StatelessWidget {
  const BrewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
