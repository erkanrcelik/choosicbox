import 'package:choosicbox/utils/ui/text/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../config/path/svg_path.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.title,
    this.width = 24,
    this.height = 24,
  }) : super(key: key);

  final String icon;
  final String title;
  final VoidCallback onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 147,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(27),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(122, 129, 190, 0.16),
                offset: Offset(0, 10),
                blurRadius: 40,
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPath(
                    svgPath: icon,
                    width: width,
                    height: height,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: CustomTextStyle.socialButtonText
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
