import 'package:choosicbox/utils/ui/linkText/link_text.dart';
import 'package:flutter/material.dart';

import '../text/custom_text.dart';

class RowLinkText extends StatelessWidget {
  const RowLinkText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account?',style: CustomTextStyle.bodyText1,),
        LinkText(title: 'Sign Up')
      ],
    );
  }
}
