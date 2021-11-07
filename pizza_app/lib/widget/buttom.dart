import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final Widget text;
  final double wid;
  final double hght;
  final VoidCallback onpress;
  final Color color;
  final Color borderColor;
  final String imageUrl;
  const WidgetButton({
    this.wid,
    this.hght,
    this.borderColor,
    this.onpress,
    this.color,
    this.text,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onpress,
        child: Container(
            width: wid,
            height: hght,
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 2),
                borderRadius: BorderRadius.circular(30),
                color: color),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  height: 50,
                  width: 30,
                ),
                text
              ],
            )));
  }
}
