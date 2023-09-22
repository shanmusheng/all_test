import 'package:flutter/material.dart';

class inputs extends StatelessWidget {
  const inputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
                color: Color(0xff3C80D1).withOpacity(0.09),
                offset: Offset(0, 12),
                blurRadius: 19),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Your eamil",
              ),
            ),
            Divider(),
            TextField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                hintText: "Your Password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
