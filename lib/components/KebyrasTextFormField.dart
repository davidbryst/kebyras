import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';

class KebyrasTextFormField extends StatelessWidget {
  KebyrasTextFormField(
      {Key key, this.khintText, this.ksuffixIcon, this.maxLines = 1})
      : super(key: key);
  final String khintText;
  final Icon ksuffixIcon;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: text_black,
            offset: Offset(0, 0),
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        maxLines: this.maxLines,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: this.khintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: this.ksuffixIcon,
        ),
      ),
    );
  }
}
