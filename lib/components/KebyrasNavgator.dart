import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kebyras/constantes.dart';

class KebyrasNavigator extends StatelessWidget {
  const KebyrasNavigator({Key key, this.press}) : super(key: key);
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: FlatButton(
        onPressed: this.press,
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            color: text_white,
            boxShadow: [
              kebyrasBoxShadow,
            ],
          ),
          child: Icon(FontAwesomeIcons.bars, color: color_interactive['first']),
        ),
      ),
    );
  }
}
