import 'dart:async';
import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/screens/authentication/welcome/View/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const WelcomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPath(svgPath: 'choosicbox_logo', width: 150.w, height: 150.h),
            SizedBox(height: 20.h),
            Text(
              AppStrings.appName,
              style: Theme.of(context).textTheme.headlineLarge
            ),
          ],
        ),
      ),
    );
  }
}