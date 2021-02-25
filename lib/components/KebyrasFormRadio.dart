import 'package:flutter/material.dart';
import 'package:kebyras/constantes.dart';
import 'package:kebyras/enums.dart';

class KebyrasFormRadio extends StatefulWidget {
  KebyrasFormRadio({Key key}) : super(key: key);

  @override
  _KebyrasFormRadioState createState() => _KebyrasFormRadioState();
}

/// This is the private State class that goes with KebyrasFormRadio.
class _KebyrasFormRadioState extends State<KebyrasFormRadio> {
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
          child: Text("Type", textAlign: TextAlign.start),
        ),
        RadioListTile<SingingCharacter>(
          activeColor: color_selected,
          title: const Text('Lafayette'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          activeColor: color_selected,
          title: const Text('Thomas Jefferson'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
