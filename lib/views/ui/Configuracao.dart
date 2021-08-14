import 'package:flutter/material.dart';

class Configuracao extends StatelessWidget {
  final Color color;

  Configuracao(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}