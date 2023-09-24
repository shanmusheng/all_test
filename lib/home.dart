import 'package:all_test/items/ziti.dart';
import 'package:all_test/testing/tabtest.dart';
import 'package:flutter/material.dart';

import 'items/ui1/ui_1_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff93E5B7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              ClipPath(
                clipper: homeclip(),
                child: Container(
                  height: 120,
                  color: Color(0xff93E5B7),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/han.jpg',
                        width: 100,
                      ),
                    ),
                    Text(
                      '杉木笙',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ]),
            item(
              title: '字体使用--全局和局部',
              to: ziti(),
            ),
            item(
              to: ui_home(),
              title: 'ui布局社交系列1',
            ),
            item(
              to: CustomPageViewWidget(),
              title: 'pageview启动页实例',
            )
          ],
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  final String title;
  final Widget to;
  item({
    super.key,
    required this.title,
    required this.to,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return to;
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 30,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ]),
        child: Row(
          children: [
            Icon(Icons.label_important),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class homeclip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path
      ..moveTo(0, 0)
      ..quadraticBezierTo(size.width / 2, size.height, size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
