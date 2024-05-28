import 'package:flutter/material.dart';
import 'ta.dart';
import 'inicio.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _perguntaAtual = 0;
  int _pontuacao = 0;

  final List<Pergunta> _perguntas = [
    Pergunta(
        pergunta: 'hoquistas podem brigar?',
        respostas: ['verdade', 'Mentira', 'impossivel', 'talvez'],
        respostaCorreta: 'verdade',
        imagemURL:
            'https://conteudo.imguol.com.br/c/esporte/28/2024/04/04/jogadores-do-new-york-rangers-e-do-new-jersey-devil-brigam-durante-jogo-da-nhl-1712247431489_v2_450x450.jpg.webp'),
    Pergunta(
        pergunta: 'Quantos jogadores tem em uma partida de hockey no gelo?',
        respostas: ['12', '40', '14', '16'],
        respostaCorreta: '12',
        imagemURL:
            'https://upload.wikimedia.org/wikipedia/commons/d/dd/HitmenHurricanesFaceoff.jpg'),
    Pergunta(
        pergunta: 'Onde que  acontece o Rock ?',
        respostas: ['no gelo', 'no Palco', 'na Areia', 'no ar'],
        respostaCorreta: 'no Palco',
        imagemURL:
            'https://img.olympics.com/images/image/private/t_s_16_9_g_auto/t_s_w1460/f_auto/primary/kfaypedetsymnqcrndbr'),
    Pergunta(
        pergunta: 'EM que pais que o hockey e mais popular ?',
        respostas: ['Canada', 'USA', 'Brasil', 'Islandia'],
        respostaCorreta: 'Canada',
        imagemURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF562p0SK2sxUzJwsC2OyO0pRiCzPs5lRLiW2zyNChFQ&s'),
    Pergunta(
        pergunta: 'Qual e o nome correto ?',
        respostas: ['Wayne Gretzky', 'Walter Grestsky', 'Wayne Gritsky'],
        respostaCorreta: 'Wayne Gretzky',
        imagemURL:
            'https://cdn.britannica.com/99/193199-050-B96E48A0/Wayne-Gretzky-2007.jpg'),
  ];

  void _responderPergunta(String resposta) {
    if (_perguntas[_perguntaAtual].respostaCorreta == resposta) {
      setState(() {
        _pontuacao++;
      });
    }

    if (_perguntaAtual < _perguntas.length - 1) {
      setState(() {
        _perguntaAtual++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultadoTela(
                  pontuacao: _pontuacao,
                  qtdePerguntas: _perguntas.length,
                  resetQuiz: _resetQuiz,
                )),
      );
    }
  }

  void _resetQuiz() {
    setState(() {
      _perguntaAtual = 0;
      _pontuacao = 0;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Inicio()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0d7eb7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                      child: Image.network(
                        _perguntas[_perguntaAtual].imagemURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      _perguntas[_perguntaAtual].pergunta,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0), // Adiciona margem esquerda
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: _perguntas[_perguntaAtual]
                            .respostas
                            .map((resposta) {
                          return Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    _responderPergunta(resposta);
                                  },
                                  child: Text(resposta),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(
                                        150, 65), // Largura e altura desejadas
                                    textStyle: TextStyle(fontSize: 18),
                                    shape: RoundedRectangleBorder(
                                      // Bordas retangulares
                                      borderRadius:
                                          BorderRadius.zero, // Tamanho da fonte
                                    ),
                                  )));
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pergunta {
  final String pergunta;
  final List<String> respostas;
  final String respostaCorreta;
  final String imagemURL;
  Pergunta({
    required this.pergunta,
    required this.respostas,
    required this.respostaCorreta,
    required this.imagemURL,
  });
}
