import 'package:flutter/material.dart';

class CustomPageViewWidget extends StatefulWidget {
  @override
  _CustomPageViewWidgetState createState() => _CustomPageViewWidgetState();
}

class _CustomPageViewWidgetState extends State<CustomPageViewWidget> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildDot(int index) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentPage ? Colors.blue : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView with Custom Dots Indicator'),
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            children: <Widget>[
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Page 1'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => _buildDot(index)),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomPageViewWidget(),
  ));
}
