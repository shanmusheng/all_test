import 'package:all_test/items/ui1/screen/homeall/WelcomeText.dart';
import 'package:all_test/items/ui1/screen/homeall/continues.dart';
import 'package:all_test/items/ui1/screen/homeall/inputs.dart';
import 'package:all_test/items/ui1/screen/homeall/logins.dart';
import 'package:all_test/items/ui1/screen/homeall/qita.dart';
import 'package:all_test/items/ui1/screen/login.dart';
import 'package:flutter/material.dart';

class ui_home extends StatefulWidget {
  const ui_home({super.key});

  @override
  State<ui_home> createState() => _ui_homeState();
}

class _ui_homeState extends State<ui_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF3F5F9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(
              title: 'Welcome\n',
              str: 'Enter your login details to\n access your account',
            ),
            logins(),
            // const SizedBox(
            //   height: 40,
            // ),
            inputs(),
            SizedBox(
              height: 40,
            ),
            continues(
              to: login(),
              text: 'continue',
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            qita(),
          ],
        ),
      ),
    );
  }
}
