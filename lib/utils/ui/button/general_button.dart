import 'package:choosicbox/utils/ui/text/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = const Color(0xFF3149A9),
    this.textColor = Colors.white,
    this.width = 200,
    this.height = 50,
    this.borderRadius = 40,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConstants.firstColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(122, 129, 190, 0.16),
            offset: Offset(0, 10),
            blurRadius: 40,
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.circular(28.5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: CustomTextStyle.buttonText
        ),
      ),
    );
  }
}
