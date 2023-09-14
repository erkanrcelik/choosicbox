import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreDetailFeatureCard extends StatelessWidget {
  const StoreDetailFeatureCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      child: Row(
        children: [
          SvgPath(svgPath: 'feature'),
          SizedBox(width: 10.w),
          Text(
            title,
            style: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
