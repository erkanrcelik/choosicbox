import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/colors.dart';
import '../../../../utils/ui/button/general_button.dart';
import '../../../../utils/ui/button/social_button.dart';
import '../../../../utils/ui/linkText/link_text.dart';
import '../../../../utils/ui/text/custom_text.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
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
                          'Giriş Yap',
                          style: CustomTextStyle.headline1,
                        ),
                      ),
                      SizedBox(height: 31),
                      CustomTextField(
                          controller: controller,
                          hintText: 'E-mail',
                          labelText: 'E-mail'),
                      SizedBox(height: 29),
                      CustomTextField(
                          controller: controller,
                          hintText: 'Şifre',
                          labelText: 'Şifre'),
                      SizedBox(height: 33),
                      LinkText(title: 'Şifreni mi unuttun?'),
                      SizedBox(height: 33),
                      CustomButton(
                          onPressed: () {
                            Get.toNamed('/index');
                          },
                          text: 'GİRİŞ YAP'),
                      SizedBox(height: 56),
                      RowLinkText(
                        title: 'Hesabın yok mu?',
                        text: 'Kayıt Ol',
                        onTap: () {
                          Get.toNamed('/register');
                        },
                      ),
                      SizedBox(height: 56),
                      DividerText(title: 'veya', color: Colors.black),
                      SizedBox(height: 40),
                      Center(
                        child: SocialLoginButton(
                          icon: 'google',
                          title: 'GOOGLE',
                          width: 40,
                          height: 40,
                          onPressed: () {},
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
