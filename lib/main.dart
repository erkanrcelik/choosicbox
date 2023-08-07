import 'package:choosicbox/modules/Login/View/login.dart';

import 'package:flutter/material.dart';

import 'modules/Register/View/register.dart';

void main() {
  runApp(MyApp(registerScreen: RegisterScreen()));
}

class MyApp extends StatelessWidget {
  final Widget registerScreen;

  const MyApp({super.key, required this.registerScreen});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}
