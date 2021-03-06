import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasButton extends StatelessWidget {
  const KebyrasButton(
      {Key key, this.textButton, this.press, this.styleBorder, this.textStyle})
      : super(key: key);
  final String textButton;
  final TextStyle textStyle;
  final Function press;
  final Border styleBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: FlatButton(
        onPressed: this.press,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          decoration: BoxDecoration(
            border: this.styleBorder,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            color: text_white,
            boxShadow: [
              kebyrasBoxShadow,
            ],
          ),
          child: Text("${this.textButton}", style: this.textStyle),
        ),
      ),
    );
  }
}
