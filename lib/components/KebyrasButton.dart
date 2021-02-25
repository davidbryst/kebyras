import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasButton extends StatelessWidget {
  const KebyrasButton(
      {Key key, this.child, this.press, this.styleBorder, this.padding})
      : super(key: key);
  final Widget child;
  final Function press;
  final Border styleBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: FlatButton(
        onPressed: this.press,
        child: Container(
          padding: this.padding,
          decoration: BoxDecoration(
            border: this.styleBorder,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            color: text_white,
            boxShadow: [
              kebyrasBoxShadow,
            ],
          ),
          child: this.child,
        ),
      ),
    );
  }
}
