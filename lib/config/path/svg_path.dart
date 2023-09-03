import 'package:flutter/material.dart';
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
      'assets/icons/${svgPath}_icon.svg',
      width: width ?? 24,
      height: height ?? 24,
      color: color ?? Theme.of(context).colorScheme.primary
    );
  }
}
