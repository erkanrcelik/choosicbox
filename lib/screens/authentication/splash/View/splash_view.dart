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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: EdgeInsets.only(bottom: 40.0.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 10,
                          blurRadius: 50,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SvgPath(
                      svgPath: 'logo',
                      width: 125.w,
                      height: 125.h,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    AppStrings.appName,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0.w, right: 50.0.w),
                child: Text(
                  'Mekanın Dokusu, Müziğin Ritmi, Her An Senin Kontrolünde!',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.white.withOpacity(0.5),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
