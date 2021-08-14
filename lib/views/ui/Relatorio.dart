import 'package:flutter/material.dart';

class Relatorio extends StatelessWidget {
  final Color color;

  Relatorio(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}