import 'package:flutter/material.dart';

void main() {
  runApp(const Alinhamento());
}

class Alinhamento extends StatelessWidget {
  const Alinhamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
         const children: [
          const Block(color: Colors.amberAccent, height: 100, width: 100),
          const Block(color: Colors.blueAccent, height: 100, width: 100),
          const Block(color: Colors.indigo, height: 100, width: 100)
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {
  final double width, height;
  final Color color;

  const Block(
      {Key? key,
      required this.color,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
