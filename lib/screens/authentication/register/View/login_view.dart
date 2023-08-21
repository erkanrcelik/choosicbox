import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../utils/ui/button/general_button.dart';
import '../../../../utils/ui/button/social_button.dart';
import '../../../../utils/ui/linkText/link_text.dart';
import '../../../../utils/ui/text/custom_text.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -40,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.firstColor,
                      width: 30,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              left: 10,
              child: Container(
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECE7),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    color: ColorConstants.firstColor,
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
                left: 25,
                right: 25,
                bottom: 60,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: CustomTextStyle.headline1,
                        ),
                      ),
                      SizedBox(height: 31),
                      CustomTextField(
                          controller: controller,
                          hintText: 'Full name',
                          labelText: 'Full name'),
                      SizedBox(height: 29),
                      CustomTextField(
                          controller: controller,
                          hintText: 'Password',
                          labelText: 'Password'),
                      CustomTextField(
                          controller: controller,
                          hintText: 'Password',
                          labelText: 'Password'),
                      SizedBox(height: 33),
                      LinkText(title: 'Forgot password?'),
                      SizedBox(height: 33),
                      CustomButton(onPressed: () {}, text: 'LOGIN'),
                      SizedBox(height: 56),
                      RowLinkText(),
                      SizedBox(height: 56),
                      DividerText(title: 'Sign in with', color: Colors.black),
                      SizedBox(height: 40),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SocialLoginButton(
                              icon: 'facebook',
                              title: 'FACEBOOK',
                              width: 40,
                              height: 40,
                              onPressed: () {},
                            ),
                            SizedBox(width: 31),
                            SocialLoginButton(
                              icon: 'google',
                              title: 'GOOGLE',
                              width: 40,
                              height: 40,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
