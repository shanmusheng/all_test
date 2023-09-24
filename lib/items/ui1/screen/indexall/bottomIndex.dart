import 'package:flutter/material.dart';

class bottomIndex extends StatelessWidget {
  const bottomIndex({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 140,
        ),
        Positioned(
          top: 20,
          left: size.width * 0.05,
          child: Container(
            height: 80,
            width: size.width * 0.9,
            // margin: EdgeInsets.only(bottom: 30, right: 20, left: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: Container(
            height: 80,
            width: size.width * 0.9,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/ui1/home.png'),
                  )),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/ui1/xinxi.png'),
                  )),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5468FF),
                      image: DecorationImage(
                        image: AssetImage('assets/ui1/popto.png'),
                      )),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/ui1/chuchun.png'),
                  )),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/ui1/person.png'),
                  )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
