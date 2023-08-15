import 'package:flutter/material.dart';

class ClipOvalBottomContainer extends StatelessWidget {
  final double height;
  final Color color;
  final double borderRadius;
  final Widget child;

  const ClipOvalBottomContainer({
    required this.height,
    required this.color,
    required this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomClipper(borderRadius),
      child: Container(
        padding: EdgeInsets.only(top: 50),
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}

class OvalBottomClipper extends CustomClipper<Path> {
  final double borderRadius;

  OvalBottomClipper(this.borderRadius);

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - borderRadius);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - borderRadius,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}