import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PngPath extends StatelessWidget {
  final String pngPath;

  const PngPath({super.key,
    required this.pngPath,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/$pngPath.png',
      width: 24,
      height: 24,
    );
  }
}