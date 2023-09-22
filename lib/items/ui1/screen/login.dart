import 'package:all_test/items/ui1/screen/homeall/WelcomeText.dart';
import 'package:all_test/items/ui1/screen/homeall/continues.dart';
import 'package:flutter/material.dart';

import 'location.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/ui1/image1.png',
              fit: BoxFit.fill,
            ),
          ),
          WelcomeText(
            title: 'Notifications\n',
            str:
                'Stay notified about new course updates,\n scoreboard stats and new friend\n follows.',
          ),
          continues(
            to: location(),
            text: 'Allow',
            width: 200,
          ),
          Text('SKIP'),
          SizedBox(),
        ],
      ),
    );
  }
}
