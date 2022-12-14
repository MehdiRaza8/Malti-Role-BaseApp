import 'package:flutter/material.dart';
import 'package:sharedprefrence/home.dart';
import 'package:sharedprefrence/screenfour.dart';
import 'package:sharedprefrence/screenthree.dart';
import 'package:sharedprefrence/splash.dart';
import 'package:sharedprefrence/utils/routs.dart';
import 'package:sharedprefrence/utils/routs_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.ScreenOne,
      onGenerateRoute: Routes.generateRoute
    );
  }
}
