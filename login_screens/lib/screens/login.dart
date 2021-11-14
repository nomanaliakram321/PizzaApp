import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/login.jpg',
                  ),
                )),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Hint Text',
                    prefixIcon: Icon(
                      CupertinoIcons.person_fill,
                      color: Color(0xff003c68),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Hint Text',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff003c68),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: 'Hint Text',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
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
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
                  onPressed: () {},
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ))
            ],
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
