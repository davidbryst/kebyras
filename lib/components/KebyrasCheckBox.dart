import 'package:flutter/material.dart';

class KebyrasCheckBox extends StatefulWidget {
  KebyrasCheckBox({Key key, this.valueChecked}) : super(key: key);
  final dynamic valueChecked;

  @override
  _KebyrasCheckBoxState createState() => _KebyrasCheckBoxState();
}

/// This is the private State class that goes with KebyrasCheckBox.
class _KebyrasCheckBoxState extends State<KebyrasCheckBox> {
  dynamic checked = 10.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        title: Text("${widget.valueChecked}"),
        value: checked != widget.valueChecked,
        onChanged: (bool value) {
          setState(() {
            checked = value ? 10.0 : widget.valueChecked;
          });
        },
        secondary: const Icon(Icons.hourglass_empty),
      ),
    );
  }
}
