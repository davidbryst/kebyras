import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasCard extends StatelessWidget {
  KebyrasCard({Key key, this.textCard, this.montant, this.textStyle})
      : super(key: key);
  final String textCard;
  final double montant;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top: 20.0),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text("${this.textCard}", style: normalTextStyle),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text("${this.montant} FCFA", style: this.textStyle),
          ),
        ],
      ),
    );
  }
}
