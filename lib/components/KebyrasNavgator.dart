import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kebyras/constantes.dart';

class KebyrasNavigator extends StatefulWidget {
  @override
  _KebyrasNavigatorState createState() => _KebyrasNavigatorState();
}

class _KebyrasNavigatorState extends State<KebyrasNavigator> {
  bool active = true;
  List<double> calculatedPosition(r, t) {
    return [
      0 + r * cos(t),
      0 + r * sin(t),
    ];
  }

  void setStateWidget() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, top: 40.0),
      decoration: BoxDecoration(
        color: (this.active == true)
            ? Color.fromARGB(50, 112, 112, 112)
            : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: [
          Positioned(
            left: calculatedPosition(200, 0)[0],
            top: -calculatedPosition(200, 0)[1],
            child: Visibility(
              visible: this.active,
              child: KebyrasButtonNavigator(
                icon: Icon(FontAwesomeIcons.plus,
                    color: color_interactive['first']),
                press: setStateWidget,
              ),
            ),
          ),
          Positioned(
            left: calculatedPosition(205, -(pi / 6))[0],
            top: -calculatedPosition(205, -(pi / 6))[1],
            child: Visibility(
              visible: this.active,
              child: KebyrasButtonNavigator(
                icon: Icon(FontAwesomeIcons.moneyBillWaveAlt,
                    color: color_interactive['first']),
              ),
            ),
          ),
          Positioned(
            left: calculatedPosition(205, -(pi / 3))[0],
            top: -calculatedPosition(205, -(pi / 3))[1],
            child: Visibility(
              visible: this.active,
              child: KebyrasButtonNavigator(
                icon: Icon(FontAwesomeIcons.chartPie,
                    color: color_interactive['first']),
              ),
            ),
          ),
          Positioned(
            left: calculatedPosition(200, -(pi / 2))[0],
            top: -calculatedPosition(200, -(pi / 2))[1],
            child: Visibility(
              visible: this.active,
              child: KebyrasButtonNavigator(
                icon: Icon(FontAwesomeIcons.home,
                    color: color_interactive['first']),
              ),
            ),
          ),
          Positioned(
            left: 30.0,
            top: 30.0,
            child: KebyrasButtonNavigator(
              icon: Icon(FontAwesomeIcons.bars,
                  color: color_interactive['first']),
              press: setStateWidget,
            ),
          ),
        ],
      ),
    );
  }
}

class KebyrasButtonNavigator extends StatelessWidget {
  const KebyrasButtonNavigator({Key key, this.icon, this.press})
      : super(key: key);
  final Icon icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 90.0,
      child: FlatButton(
        padding: EdgeInsets.all(10.0),
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
          child: Center(
            child: this.icon,
          ),
        ),
      ),
    );
  }
}
