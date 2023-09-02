import 'dart:async';
import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/screens/authentication/welcome/View/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_string.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Splash Screen süresi sonunda ana sayfaya yönlendirme
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const WelcomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPath(svgPath: 'icon', width: 200, height: 200),
            Text(
              AppStrings.appName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}