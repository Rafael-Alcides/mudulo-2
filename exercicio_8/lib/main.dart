import 'package:flutter/material.dart';

void main() {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1466637574441-749b8f19452f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Block(color: Colors.green, width: 100, height: 100),
             Block(color: Colors.red, width: 100, height: 100),
             Block(color: Colors.yellow, width: 100, height: 100)
            ],
          )
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {
  final double height, width;
  final Color color;

  const Block({Key? key,
  required this.color,
  required this.width,
  required this.height} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
