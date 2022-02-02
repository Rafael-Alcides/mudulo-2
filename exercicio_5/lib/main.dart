import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    
    home: Card(
      child: Center(
        child: App(),
      ),
    ),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.8],
          colors: [Colors.blue, Color.fromARGB(255, 197, 111, 212)])
  
      ),
      child: Center(
        child: Text("Flutter Gradient",
        style: TextStyle(color: Colors.white, fontSize: 32.0),)
      )
    );
  }
}