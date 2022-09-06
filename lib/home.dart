import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sharedprefrence/screenthree.dart';
import 'package:sharedprefrence/utils/routs_name.dart';

class ScreenTwo extends StatelessWidget {
  dynamic data;

  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.ScreenThree,
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.yellowAccent,
                  ),
                  child: const Center(child: Text('Screen 2')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
