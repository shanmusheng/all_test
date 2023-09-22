import 'package:flutter/material.dart';

class logins extends StatelessWidget {
  const logins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('SIGN IN'),
          Text('SIGN UP'),
          Text('PHONE'),
        ],
      ),
    );
  }
}
