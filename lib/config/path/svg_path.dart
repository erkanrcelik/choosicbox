import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPath extends StatelessWidget {
  final String svgPath;
  final double? width;
  final double? height;

  const SvgPath({super.key,
    required this.svgPath, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$svgPath.svg',
      width: width ?? 24,
      height: height ?? 24,
    );
  }
}