import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(40, 42, 52, .1),
  100: Color.fromRGBO(40, 42, 52, .2),
  200: Color.fromRGBO(40, 42, 52, .3),
  300: Color.fromRGBO(40, 42, 52, .4),
  400: Color.fromRGBO(40, 42, 52, .5),
  500: Color.fromRGBO(40, 42, 52, .6),
  600: Color.fromRGBO(40, 42, 52, .7),
  700: Color.fromRGBO(40, 42, 52, .8),
  800: Color.fromRGBO(40, 42, 52, .9),
  900: Color.fromRGBO(40, 42, 52, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF282a34, color);
Color darkerYellow = const Color(0xffb36500);
Color lightYellow = const Color(0xfffcac46);
Color bodyColor = const Color(0xff3c3f51);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Navorski'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: lightYellow,
            fontSize: 26,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'deneme',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: bodyColor,
    );
  }
}
