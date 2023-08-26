import 'package:choosicbox/utils/ui/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/path/svg_path.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final String icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 147.w,
        height: 57.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(27).r,
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
                  width: 24.w,
                  height: 24.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  title,
                  style: CustomTextStyle.socialButtonText
                ),
              ],
            )
        ),
      ),
    );
  }
}
