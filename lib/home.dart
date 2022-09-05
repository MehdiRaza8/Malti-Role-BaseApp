import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sharedprefrence/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final emailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();
final agecontroller = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Age'),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () async {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.setString('email', emailcontroller.text.toString());
                    sp.setString(
                        'Password', passwordcontroller.text.toString());
                    sp.setString('age', agecontroller.text.toString());
                    sp.setBool('login', true);
                  },
                  child: Container(
                    height: 30,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('perform')),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
