import 'package:flutter/material.dart';

import 'ta.dart';
import 'inicio.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}
