import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasFormElement extends StatelessWidget {
  KebyrasFormElement({Key key, this.child, this.margin = 20.0})
      : super(key: key);
  final Widget child;
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          this.child,
          Container(
            margin: EdgeInsets.all(this.margin),
            child: Divider(indent: 10.0, endIndent: 10.0, color: text_black),
          )
        ],
      ),
    );
  }
}
