import 'package:flutter/material.dart';
import 'package:sharedprefrence/home.dart';
import 'package:sharedprefrence/screenfour.dart';
import 'package:sharedprefrence/screenthree.dart';
import 'package:sharedprefrence/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ScreenOne.id,
      routes: {
        ScreenOne.id: (context) => ScreenOne(),
        ScreenTwo.id: (context) => ScreenTwo(),
        ScreenThree.id: (context) => ScreenThree(),
        ScreenFour.id: (context) => ScreenFour()
      },
    );
  }
}
