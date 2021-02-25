import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasFormSection extends StatelessWidget {
  KebyrasFormSection({Key key, this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: text_white,
        boxShadow: [
          BoxShadow(
            color: text_black,
            offset: Offset(0, 0),
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: this.children,
      ),
    );
  }
}
