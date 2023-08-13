import 'package:choosicbox/modules/Home/View/home.dart';
import 'package:choosicbox/modules/Login/View/login.dart';
import 'package:choosicbox/modules/Profile/View/profile.dart';
import 'package:choosicbox/modules/Register/View/register.dart';

import 'package:flutter/material.dart';

import 'modules/Category/View/category.dart';

void main() {
  runApp(MyApp(registerScreen: HomeScreen()));
}

class MyApp extends StatelessWidget {
  final Widget registerScreen;

  const MyApp({super.key, required this.registerScreen});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
