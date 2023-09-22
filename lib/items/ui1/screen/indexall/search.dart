import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
        ),
        Positioned(
          top: 30,
          left: -30,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'assets/ui1/image3.png',
                width: 500,
                fit: BoxFit.fitWidth,
              )),
        ),
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find vehicles and more…',
                style: TextStyle(
                    fontSize: 20, color: Color(0xff555093).withOpacity(0.2)),
              ),
              Container(
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff42C494),
                  image: const DecorationImage(
                    image: AssetImage('assets/ui1/search.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
