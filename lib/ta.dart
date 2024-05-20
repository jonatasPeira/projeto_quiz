import 'package:flutter/material.dart';

class ResultadoTela extends StatelessWidget {
  final int pontuacao;
  final int qtdePerguntas;
  final VoidCallback resetQuiz;

  ResultadoTela({
    required this.pontuacao,
    required this.qtdePerguntas,
    required this.resetQuiz,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTADO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você completou o quiz!',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              'Pontuação: $pontuacao / $qtdePerguntas',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                resetQuiz();
              },
              child: Text('Reiniciar?'),
            ),
          ],
        ),
      ),
    );
  }
}
