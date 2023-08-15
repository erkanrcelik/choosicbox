import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageWidget extends StatelessWidget {
  final String svgPath;

  SvgImageWidget({
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$svgPath',
      width: 24,
      height: 24,
    );
  }
}