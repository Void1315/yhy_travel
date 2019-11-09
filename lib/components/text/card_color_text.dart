import 'package:flutter/material.dart';

class CardColorText extends StatelessWidget {
  String text;

  double fontSize;

  FontWeight fontWeight;
  CardColorText(
      {this.text, this.fontSize = 14, this.fontWeight = FontWeight.w600});

  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: Theme.of(context).cardColor,
          fontSize: this.fontSize,
          fontWeight: this.fontWeight),
    );
  }
}
