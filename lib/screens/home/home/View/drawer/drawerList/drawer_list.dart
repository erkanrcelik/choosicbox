import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class drawerListWidget extends StatelessWidget {
  const drawerListWidget({super.key, required this.icon, required this.text, this.onTap});

  final String icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 23.h,
          child: Row(
            children: [
              Image.asset('assets/icons/$icon.png', height: 23, width: 23),
              SizedBox(width: 20.w),
              Text(
                text,
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Sofia Pro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
