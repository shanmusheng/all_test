import 'package:flutter/material.dart';

class ziti extends StatefulWidget {
  const ziti({super.key});

  @override
  State<ziti> createState() => _zitiState();
}

class _zitiState extends State<ziti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff93E5B7),
        title: Text('字体'),
      ),
      body: Column(
        children: [
          FlutterLogo(
            size: 100,
          )
        ],
      ),
    );
  }
}
