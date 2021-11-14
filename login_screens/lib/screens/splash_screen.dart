import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/splash_screen.jpg',
                ),
              )),
            ),
            Column(
              children: [
                ButtonWidget(
                  backgroundColor: Color(0xff003c68),
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  backgroundColor: Colors.white,
                  textColor: Color(0xff003c68),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;

  const ButtonWidget({
    Key key,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 6,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
          onPressed: () {},
          child: Text(
            'Button',
            style: TextStyle(color: textColor, fontSize: 15),
          )),
    );
  }
}

class SocialLoginWidgets extends StatelessWidget {
  const SocialLoginWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/facebook.jpg',
          width: 100,
          height: 100,
        ),
        Image.asset(
          'assets/images/google.jpg',
          width: 100,
          height: 100,
        ),
        Image.asset(
          'assets/images/instagran.jpg',
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
