import 'package:choosicbox/utils/ui/text/custom_text.dart';
import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  DividerText({Key? key, required this.title, required this.color}) : super(key: key);
  final String title;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: color)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: CustomTextStyle.headline4
          ),
        ),
        Expanded(child: Divider(color: color)),
      ],
    );
  }
}
