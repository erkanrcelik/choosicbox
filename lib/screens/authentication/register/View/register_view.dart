import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/colors.dart';
import '../../../../utils/ui/button/general_button.dart';
import '../../../../utils/ui/button/social_button.dart';
import '../../../../utils/ui/text/custom_text.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class RegisterViews extends StatelessWidget {
  RegisterViews({Key? key}) : super(key: key);
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
                        'Kayıt Ol',
                        style: CustomTextStyle.headline1,
                      ),
                    ),
                    SizedBox(height: 31),
                    CustomTextField(
                        controller: controller,
                        hintText: 'Ad Soyad',
                        labelText: 'Ad Soyad'),
                    SizedBox(height: 15),
                    CustomTextField(
                        controller: controller,
                        hintText: 'E-mail',
                        labelText: 'E-mail'),
                    SizedBox(height: 15),
                    CustomTextField(
                        controller: controller,
                        hintText: 'Şifre',
                        labelText: 'Şifre'),
                    SizedBox(height: 15),
                    CustomTextField(
                        controller: controller,
                        hintText: 'Şifre Tekrar',
                        labelText: 'Şifre Tekrar'),
                    SizedBox(height: 40),
                    CustomButton(
                        onPressed: () {
                          Get.toNamed('/login');
                        },
                        text: 'KAYIT OL'),
                    SizedBox(height: 30),
                    RowLinkText(
                      title: 'Zaten bir hesabın mı var?',
                      text: 'Giriş Yap',
                      onTap: () {
                        Get.toNamed('/login');
                      },
                    ),
                    SizedBox(height: 25),
                    DividerText(title: 'veya', color: Colors.black),
                    SizedBox(height: 15),
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
                            onPressed: () {
                              Get.toNamed('/index');
                            },
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
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
              top: 0,
              left: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:  MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Kayıt Ol',
                            style: CustomTextStyle.headline1,
                          ),
                        ),
                        SizedBox(height: 31),
                        CustomTextField(
                            controller: controller,
                            hintText: 'Ad Soyad',
                            labelText: 'Ad Soyad'),
                        SizedBox(height: 15),
                        CustomTextField(
                            controller: controller,
                            hintText: 'E-mail',
                            labelText: 'E-mail'),
                        SizedBox(height: 15),
                        CustomTextField(
                            controller: controller,
                            hintText: 'Şifre',
                            labelText: 'Şifre'),
                        SizedBox(height: 15),
                        CustomTextField(
                            controller: controller,
                            hintText: 'Şifre Tekrar',
                            labelText: 'Şifre Tekrar'),
                        SizedBox(height: 40),
                        CustomButton(
                            onPressed: () {
                              Get.toNamed('/login');
                            },
                            text: 'KAYIT OL'),
                        SizedBox(height: 30),
                        RowLinkText(
                          title: 'Zaten bir hesabın mı var?',
                          text: 'Giriş Yap',
                          onTap: () {
                            Get.toNamed('/login');
                          },
                        ),
                        SizedBox(height: 25),
                        DividerText(title: 'veya', color: Colors.black),
                        SizedBox(height: 15),
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
                                onPressed: () {
                                  Get.toNamed('/index');
                                },
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
