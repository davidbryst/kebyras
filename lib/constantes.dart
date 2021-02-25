import 'package:flutter/material.dart';

// color
const text_black = Color.fromARGB(50, 112, 112, 112);
const text_white = Colors.white;
const text_creance = Color(0xFF00CB44);
const text_dette = Color(0xFFCB0007);
const color_selected = Color(0xFF33FF77);
const color_baner = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFE2B0FF), Color(0xFF9F44D3)],
);
const color_interactive = {
  'first': Color(0xFF922395),
  'second': Color(0xFFDC1DB6),
  'third': Color(0xFFD800DF),
};
const text_normal_opacity = {
  'first': 100.0,
  'second': 60.0,
  'thrid': 10.0,
};
const photo = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(30, 112, 112, 112),
    Color.fromARGB(6, 112, 112, 112),
    Color.fromARGB(30, 112, 112, 112),
  ],
);

// shadown
const kebyrasBoxShadow = BoxShadow(
  color: text_black,
  offset: Offset(0, 0),
  blurRadius: 9,
  spreadRadius: 0,
);
const background_blur = '';

// text Style

const normalTextStyle = TextStyle(
  color: Color.fromARGB(255, 112, 112, 112),
  fontWeight: FontWeight.w400,
  fontSize: 25.0,
);

const subTextStyle = TextStyle(
  color: Color.fromARGB(180, 112, 112, 112),
  fontSize: 18.0,
);

const subSubTextStyle = TextStyle(
  color: Color.fromARGB(100, 112, 112, 112),
  fontSize: 15.0,
);

const detteTextStyle = TextStyle(
  color: text_dette,
  fontWeight: FontWeight.w500,
  fontSize: 20.0,
);

const buttonTextStyle = TextStyle(
  color: Color(0xFF922395),
  fontWeight: FontWeight.w400,
  fontSize: 20.0,
);

const defaultButtonTextStyle = TextStyle(
  color: Color.fromARGB(255, 112, 112, 112),
  fontWeight: FontWeight.w400,
  fontSize: 20.0,
);
