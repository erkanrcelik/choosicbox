import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPath extends StatelessWidget {
  final String svgPath;
  final double? width;
  final double? height;
  final Color? color;

  const SvgPath({super.key,
    required this.svgPath, this.width, this.height, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/${svgPath}.svg',
      width: width ?? 24.w,
      height: height ?? 24.h,
      color: color ?? Theme.of(context).colorScheme.primary
    );
  }
}
