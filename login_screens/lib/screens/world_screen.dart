import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WordScreen extends StatelessWidget {
  const WordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/world.jpg',
                  ),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'انشاء حساب',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'انشاء حساب',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                hintText: 'البريد الالكتروني',
                icon: Icons.email,
              ),
              SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                hintText: 'كلمة التي',
                icon: Icons.lock,
              ),
              SizedBox(
                height: 7,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff003c68),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 6)),
                  onPressed: () {},
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              SocialLoginWidgets()
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const TextFieldWidget({
    Key key,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 3,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: Color(0xff003c68),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
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
