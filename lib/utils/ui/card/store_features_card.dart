import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreFeaturesCard extends StatelessWidget {
  const StoreFeaturesCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 20.w),
      child: Text(
        text,
        style:  TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff8A8E9B),
        ),
      ),
    );
  }
}
