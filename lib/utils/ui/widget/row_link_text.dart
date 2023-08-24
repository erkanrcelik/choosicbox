import 'package:choosicbox/utils/ui/linkText/link_text.dart';
import 'package:flutter/material.dart';

import '../text/custom_text.dart';

class RowLinkText extends StatelessWidget {
  const RowLinkText({Key? key, required this.title, required this.text, this.onTap})
      : super(key: key);
  final String title;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: CustomTextStyle.bodyText1,
        ),
        const SizedBox(
          width: 5,
        ),
        LinkText(title: text ,onTap: onTap, )
      ],
    );
  }
}
