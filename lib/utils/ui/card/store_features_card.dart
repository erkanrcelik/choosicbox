import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreFeaturesCard extends StatelessWidget {
  const StoreFeaturesCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.w, 2.w, 5.w, 2.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.1),
            blurRadius: 10.r,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPath(svgPath: 'music'),
          Text(
            text,
            style:  TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff8A8E9B),
            ),
          ),
        ],
      ),
    );
  }
}
