import 'package:flutter/material.dart';
import 'package:login_screens/screens/login.dart';
import 'package:login_screens/screens/splash_screen.dart';

import 'screens/sign_up.dart';
import 'screens/world_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF003c68),
      ),
      home: WordScreen(),
    );
  }
}
