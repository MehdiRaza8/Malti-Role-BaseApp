import 'package:flutter/material.dart';
import 'package:sharedprefrence/home.dart';

class ScreenOne extends StatelessWidget {
  static const String id = 'ScreenOne';

  const ScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
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
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: const Center(child: Text('Screen 1')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
