import 'package:flutter/material.dart';
import 'package:sharedprefrence/home.dart';
import 'package:sharedprefrence/screenthree.dart';
import 'package:sharedprefrence/splash.dart';
import 'package:sharedprefrence/utils/routs_name.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.ScreenOne:
        return MaterialPageRoute(builder: (context) => ScreenOne());

      case RouteName.ScreenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));

      case RouteName.ScreenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Text("Data"),
          );
        });
    }
  }
}
