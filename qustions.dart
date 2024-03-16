import 'package:flutter/material.dart';

class Qustion extends StatelessWidget {
  var qustionText;

  Qustion(this.qustionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
        color: Colors.green,
        style: BorderStyle.solid,
      )),
      child: Text(
        qustionText,
        style: TextStyle(
          fontSize: 22,
          height: 3,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
