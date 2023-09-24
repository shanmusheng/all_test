import 'package:flutter/material.dart';

class rowitem extends StatelessWidget {
  const rowitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          item(
            itemsrc: 'assets/ui1/item1.png',
            text: 'Properties\n & Rooms',
          ),
          item(
            itemsrc: 'assets/ui1/item2.png',
            text: 'Properties\n & Rooms',
          ),
          item(
            itemsrc: 'assets/ui1/item3.png',
            text: 'Properties\n & Rooms',
          ),
        ],
      ),
    );
  }
}

class item extends StatelessWidget {
  final String itemsrc;
  final String text;
  const item({
    super.key,
    required this.itemsrc,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 130,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow()]),
      child: Column(
        children: [
          Image.asset(itemsrc),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
