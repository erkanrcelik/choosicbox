import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextSongCard extends StatelessWidget {
  const NextSongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Color(0xFFFE724C),
      endRadius: 120.0,
      duration: Duration(milliseconds: 1000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Container(
        child: Material(
          elevation: 10.0,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            radius: 90.0,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(300).r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
