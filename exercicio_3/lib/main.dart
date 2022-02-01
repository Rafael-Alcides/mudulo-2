import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    
    home: Card(
      
      child: Center(
        child: App(
        ),
      ),
    ),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       
      home: Card(
       color: Colors.pinkAccent,
        child: Center(
          child: Text("ok",
          style: TextStyle(color: Colors.white),)
        ),
      ),
    );
  }
}