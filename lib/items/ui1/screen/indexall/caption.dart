import 'package:flutter/material.dart';
class caption extends StatelessWidget {
  const caption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'CATEGORIES',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                'VIEW ALL',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add))
            ],
          ),
        ],
      ),
    );
  }
}
