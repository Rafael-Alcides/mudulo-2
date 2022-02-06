import 'package:flutter/material.dart';

void main() {
  runApp( const Mycomponent());
}

class Mycomponent extends StatelessWidget {
  const Mycomponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Block(color: Colors.green, height: 200, width: 500),
        Block(color: Colors.black, height: 100, width: 200),
        Block(color: Colors.red, height: 50, width: 300),
        Block(color: Colors.blue, height: 20, width: 600)
      ],
    );
  }
}

class Block extends StatelessWidget {
  final double height, width;
  final Color color;

  Block(
      {Key? key,
      required this.color,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}
