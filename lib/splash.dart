import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/5613271/pexels-photo-5613271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
    );
  }
}
