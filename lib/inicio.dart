import 'package:flutter/material.dart';
import 'main.dart'; // Make sure 'main.dart' has the QuizPage class
import 'ju.dart'; // Make sure 'ju.dart' is properly configured
import 'dificuldade.dart'; // Importe a classe CreditosPage

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/bf/f9/88/bff988b39f96d10e9eec9510fe989e95.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 65),
                  ),
                  child: Text('Inicia', style: TextStyle(fontSize: 18)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreditosPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 65),
                  ),
                  child: Text('Créditos', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
