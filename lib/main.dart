import 'package:flutter/material.dart';
import 'package:kebyras/components/KebyrasForm.dart';
import 'package:kebyras/constantes.dart';
import 'package:kebyras/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(30),
        child: MyFrom(),
      )),
    );
  }
}

/// This is the stateful widget that the main application instantiates.

class KebyrasInputDatePickerFormField extends StatelessWidget {
  KebyrasInputDatePickerFormField({Key key}) : super(key: key);
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
      child: InputDatePickerFormField(
        lastDate: DateTime.now(),
        firstDate: DateTime(2000),
        initialDate: DateTime.now(),
      ),
    );
  }
}
