import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight weight;
  final Alignment alignment;
  // final int lineHeight;
  final double letterSpacing;

  CustomText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.weight = FontWeight.normal,
    this.letterSpacing = 1,
    //  this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: letterSpacing,
          fontSize: fontSize,
          fontWeight: weight,
        ),
        // maxLines: maxLine,
      ),
    );
  }
}
