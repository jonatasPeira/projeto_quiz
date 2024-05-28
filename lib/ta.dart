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
    // Calcula a porcentagem de acertos
    double porcentagem = (pontuacao / qtdePerguntas) * 100;

    // Determina a mensagem com base na porcentagem de acertos
    String mensagemDesempenho;
    String imagemUrl;
    if (porcentagem >= 50) {
      mensagemDesempenho = 'Parabéns! Você acertou mais que a metade!';
      imagemUrl =
          'https://www.bardown.com/polopoly_fs/1.675345.1487433339!/fileimage/httpImage/image.JPG_gen/derivatives/landscape_620/brent-burns-undoubtedly-has-one-of-the-nhl-s-best-smiles.JPG';
    } else {
      mensagemDesempenho =
          'Você não acertou nem metade. Volte e tente de novo!';
      imagemUrl =
          'https://i.pinimg.com/564x/0b/fe/e3/0bfee30eae7572b0f40e6a553dce1fe6.jpg';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTADO"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: Image.network(
                  imagemUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Você completou o quiz!',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Pontuação: $pontuacao / $qtdePerguntas',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  mensagemDesempenho,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double
                    .infinity, // Faz o botão preencher toda a largura disponível
                child: ElevatedButton(
                  onPressed: resetQuiz,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.0), // Aumenta a altura do botão
                  ),
                  child: Text(
                    'Reiniciar?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
