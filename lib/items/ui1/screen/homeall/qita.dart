import 'package:flutter/material.dart';

class qita extends StatelessWidget {
  const qita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 60,
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff5468FF).withOpacity(0.3),
                    offset: Offset(0, 10),
                    blurRadius: 25)
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/ui1/ic_facebook.png',
                  width: 30,
                ),
                Text(
                  'FACEBOOK',
                  style: TextStyle(fontSize: 20, color: Color(0xff5468FF)),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 60,
          width: 120,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff5468FF).withOpacity(0.3),
                  offset: Offset(0, 10),
                  blurRadius: 25)
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            'assets/ui1/goole.png',
            width: 10,
          ),
        ),
      ],
    );
  }
}
