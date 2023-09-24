import 'package:flutter/material.dart';

class continues extends StatelessWidget {
  final double width;
  final String text;
  final Widget to;
  const continues({
    super.key,
    required this.width,
    required this.text,
    required this.to,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return to;
        }));
      },
      child: Container(
        height: 60,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xff5468FF),
          boxShadow: [
            BoxShadow(
                color: Color(0xff5468FF).withOpacity(0.3),
                offset: Offset(0, 10),
                blurRadius: 25)
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff3D56F0), shape: BoxShape.circle),
              child: Image.asset(
                'assets/ui1/into.png',
                width: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
