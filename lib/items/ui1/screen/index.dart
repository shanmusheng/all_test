import 'package:flutter/material.dart';

import 'homeall/WelcomeText.dart';
import 'indexall/search.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          SizedBox(
            height: 140,
          ),
          Positioned(
            top: 20,
            child: Container(
              height: 80,
              width: 400,
              margin: EdgeInsets.only(bottom: 30, right: 20, left: 20),
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
              width: 400,
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
      ),
      backgroundColor: Color(0xffF3F5F9),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          WelcomeText(
            title: 'Hi, Antonio\n',
            str: 'What would you like to buy\n today? Search below.',
          ),
          search(),
          Padding(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add))
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item(
                  itemsrc: 'assets/ui1/item1.png',
                  text: 'Properties\n & Rooms',
                ),
                item(
                  itemsrc: 'assets/ui1/item2.png',
                  text: 'Properties\n & Rooms',
                ),
                item(
                  itemsrc: 'assets/ui1/item3.png',
                  text: 'Properties\n & Rooms',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class item extends StatelessWidget {
  final String itemsrc;
  final String text;
  const item({
    super.key,
    required this.itemsrc,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 130,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow()]),
      child: Column(
        children: [
          Image.asset(itemsrc),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
