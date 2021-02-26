import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasGraphique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600.0,
      decoration: BoxDecoration(
        gradient: color_baner,
      ),
    );
  }
}