import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {

  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: const Text(
          'Done',
          style:
              const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
