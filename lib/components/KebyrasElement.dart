import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasElement extends StatelessWidget {
  KebyrasElement({Key key, this.titre, this.montant, this.date})
      : super(key: key);
  final dynamic titre;
  final dynamic montant;
  final dynamic date;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: photo,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(color: text_black, width: 1.0),
            ),
            child: null,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 10.0, bottom: 40.0),
              child: Text("${this.titre}", style: normalTextStyle),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Text("${this.montant} FCFA", style: subTextStyle),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text("${this.date}", style: subSubTextStyle),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
