import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  String imagem = "https://i.imgur.com/jTqNa7D.png";

  int fragments = 0;
  int pierces = 0;
  int stone = 0;

  void updateStone() {
    setState(() {
      fragments++;

      if (fragments == 10) {
        pierces++;
        fragments = 0;
      }

      if (pierces == 10) {
        stone++;
        pierces = 0;
      }

      if (stone > 0) {
        imagem = "https://i.imgur.com/JAeGRb1.png";
      } else if (pierces > 0) {
        imagem = "https://i.imgur.com/IR5Sn6X.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: updateStone,
        child: Container(
          padding:const EdgeInsets.only(top: 45),
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.imgur.com/etWX9CB.jpg'),
              fit: BoxFit.cover 
            ),
          ),

          child: Column(
            children: [
              SizedBox(
                child: Image.network(imagem),
                height: 250,
              ),

              Center(
                child: Text(
                  "Stones $stone",
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              Center(
                child: Text(
                  "Piecies $pierces",
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              Center(
                child: Text(
                  "Fragments $fragments",
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),  
    );
  }
}
