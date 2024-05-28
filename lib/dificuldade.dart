import 'package:flutter/material.dart';

class CreditosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Créditos"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Imagem com URL
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.pinimg.com/736x/28/30/79/283079e74fdf3f582dba2843dc0e0aa8.jpg'), // URL da imagem
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ), // Espaço entre a imagem e a lista de informações
              // Lista de informações
              Text(
                "Nome: Jonatas Pereira Souza",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Idade: 19",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Formação: Desenvolvedor de sistemas",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
