import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import '../../../appframe/app_frame.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // 3 saniye sonra MyHomePage sayfasına yönlendirme yap
    Timer(const Duration(seconds: 3), () {
      Get.off( AppFrame()); // Get.to yerine Get.off kullanarak sayfanın geri düğmesini devre dışı bırakıyoruz
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RippleAnimation(
          color: Theme.of(context).colorScheme.primary,
          delay: Duration(milliseconds: 300),
          repeat: true,
          minRadius: 75,
          ripplesCount: 6,
          duration: Duration(milliseconds: 6 * 300),
          child: CircleAvatar(
            minRadius: 75,
            maxRadius: 75,
            backgroundImage: NetworkImage(
                'https://gravatar.com/avatar/1f82b0492a0a938288c2d5b70534a1fb?s=400&d=robohash&r=x'),
          ),
        ),
      ),
    );
  }
}
