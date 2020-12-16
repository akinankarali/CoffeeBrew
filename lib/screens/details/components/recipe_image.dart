import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecipePoster extends StatelessWidget {
  const RecipePoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.3,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.width * 0.9,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.9,
            width: size.width * 0.9,
          )
        ],
      ),
    );
  }
}
