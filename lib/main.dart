import 'package:choosicbox/modules/Home/View/home.dart';
import 'package:choosicbox/modules/Login/View/login.dart';
import 'package:choosicbox/modules/Profile/View/profile.dart';
import 'package:choosicbox/modules/Register/View/register.dart';
import 'package:choosicbox/modules/SplashScreen/View/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/Category/View/category.dart';
import 'modules/LoadingScreen/View/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      home: SplashScreen(),
    );
  }
}