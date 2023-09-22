import 'package:all_test/items/ui1/screen/homeall/WelcomeText.dart';
import 'package:all_test/items/ui1/screen/homeall/continues.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/ui1/image2.png',
              fit: BoxFit.fill,
            ),
          ),
          WelcomeText(
            title: 'Location\n',
            str:
                'Select the location where you want to\n buy/sell products that\n you wish',
          ),
          continues(
            to: index(),
            text: 'NEAR BY',
            width: 200,
          ),
          Text('OTHER ADDRESS'),
          SizedBox(),
        ],
      ),
    );
  }
}
