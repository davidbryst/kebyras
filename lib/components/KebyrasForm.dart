import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kebyras/components/KebyrasButton.dart';
import 'package:kebyras/components/KebyrasCard.dart';
import 'package:kebyras/components/KebyrasCheckBox.dart';
import 'package:kebyras/components/KebyrasElement.dart';
import 'package:kebyras/components/KebyrasFormElement.dart';
import 'package:kebyras/components/KebyrasFormRadio.dart';
import 'package:kebyras/components/KebyrasFormSection.dart';
import 'package:kebyras/components/KebyrasTextFormField.dart';
import 'package:kebyras/constantes.dart';

class MyFrom extends StatefulWidget {
  MyFrom({Key key}) : super(key: key);

  @override
  _MyFromState createState() => _MyFromState();
}

/// This is the private State class that goes with MyFrom.
class _MyFromState extends State<MyFrom> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // not good style of input
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),

          KebyrasFormSection(
            children: [
              KebyrasTextFormField(
                khintText: "Nom",
                ksuffixIcon: Icon(FontAwesomeIcons.googlePlus),
              ),
              SizedBox(
                width: 0,
                height: 20,
              ),
              KebyrasTextFormField(
                khintText: "Montant",
                ksuffixIcon: Icon(FontAwesomeIcons.googlePlus),
              ),
              SizedBox(
                width: 0,
                height: 20,
              ),
              KebyrasTextFormField(
                khintText: "Date",
                ksuffixIcon: Icon(FontAwesomeIcons.googlePlus),
              ),
            ],
          ),
          KebyrasFormSection(
            children: [
              KebyrasFormRadio(),
            ],
          ),
          KebyrasFormSection(
            children: [
              KebyrasFormElement(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
                      child: Text("Type", textAlign: TextAlign.start),
                    ),
                    KebyrasCheckBox(valueChecked: "david"),
                    KebyrasCheckBox(valueChecked: "abraham"),
                  ],
                ),
              ),
              KebyrasFormElement(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
                      child: Text("Date", textAlign: TextAlign.start),
                    ),
                    KebyrasTextFormField(
                      khintText: "Date",
                      ksuffixIcon: Icon(FontAwesomeIcons.googlePlus),
                    ),
                  ],
                ),
              ),
              KebyrasTextFormField(
                khintText: "Date",
                ksuffixIcon: Icon(FontAwesomeIcons.googlePlus),
                maxLines: 10,
              ),
            ],
          ),
          KebyrasFormElement(
            margin: 0.0,
            child: SizedBox(),
          ),
          KebyrasFormElement(
            margin: 0.0,
            child: KebyrasElement(
              titre: "Nouriture",
              montant: "15000",
              date: "25/02/2021",
            ),
          ),
          KebyrasCard(
              textCard: "Dette", montant: -500000.0, textStyle: detteTextStyle),

          KebyrasButton(
            styleBorder:
                Border.all(color: color_interactive['first'], width: 2.0),
            child: Text("Reset", style: buttonTextStyle),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          ),
          KebyrasButton(
            child: Text("Reset", style: defaultButtonTextStyle),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          ),
          KebyrasButton(
            child: Icon(FontAwesomeIcons.bars),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          ),
        ],
      ),
    );
  }
}
