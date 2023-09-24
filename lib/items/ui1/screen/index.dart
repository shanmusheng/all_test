import 'package:all_test/items/ui1/screen/indexall/bottomIndex.dart';
import 'package:all_test/items/ui1/screen/indexall/caption.dart';
import 'package:all_test/items/ui1/screen/indexall/rowitem.dart';
import 'package:flutter/material.dart';

import 'homeall/WelcomeText.dart';
import 'indexall/search.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomIndex(size: size),
      backgroundColor: Color(0xffF3F5F9),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          WelcomeText(
            title: 'Hi, Antonio\n',
            str: 'What would you like to buy\n today? Search below.',
          ),
          search(),
          caption(),
          rowitem()
        ],
      ),
    );
  }
}
