import 'package:flutter/material.dart';
void main() {
  runApp(const Coin());
}

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  @override
  int bronze = 0;
  int prata = 0;
  int ouro = 0;

  void updateCoin() {
    setState(() {
      bronze++;

      if (bronze == 10) {
        prata++;
        bronze = 0;
      }

      if (prata == 10) {
        ouro++;
        prata = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: updateCoin,
         child : Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("BRONZE $bronze",
                style: const TextStyle(
                  color: Color.fromARGB(255, 88, 47, 14),
                  fontSize: 32.0,
                  decoration: TextDecoration.none
                ),),
              ),
              Center(
                child: Text("PRATA $prata",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 32.0,
                  decoration: TextDecoration.none
                ),),
              ),
              Center(
                child: Text("OURO $ouro",
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 32.0,
                  decoration: TextDecoration.none
                ),),
              ),
              SizedBox(height: 10.0,),
              Center(
                child: Image.asset('image/moeda.png', width: 200, height: 200,)
              )
            ]
            ),
          )
      ),
    );
  }
}