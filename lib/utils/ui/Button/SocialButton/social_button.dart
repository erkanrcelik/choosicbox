import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.iconSize = 24,
    this.width = 125,
    this.height = 50,
    this.borderRadius = 40,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{},
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFBCBEC0)),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Image.asset("lib/assets/images/apple.png",)
      ),
    );
  }
}
