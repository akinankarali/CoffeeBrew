import 'package:flutter/material.dart';

import '../../../constants.dart';

class Methodlist extends StatefulWidget {
  Methodlist({Key key}) : super(key: key);

  @override
  _MethodlistState createState() => _MethodlistState();
}

class _MethodlistState extends State<Methodlist> {
  int selectedIndex = 0;
  List methods = [
    'All',
    'Hario V60',
    'French Press',
    'AeroPress',
    'Delter Press',
    'Chemex',
    'Syphon',
    'Moka Pot',
    'Kalita Wave',
    'Bonmac Dripper'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: index == methods.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              methods[index],
              style: TextStyle(
                color: index == selectedIndex ? kYellowColor : Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
