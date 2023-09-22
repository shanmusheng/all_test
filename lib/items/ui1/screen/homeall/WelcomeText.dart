import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String title;
  final String str;
  const WelcomeText({
    super.key,
    required this.title,
    required this.str,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
              color: Color(0xff344356), fontSize: 20, height: 1.8),
          children: [
            TextSpan(text: title),
            TextSpan(
                text: str,
                style: TextStyle(
                    color: const Color(0xff344356).withOpacity(0.8),
                    height: 1.3))
          ],
        ));
  }
}
