import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/ui/button/general.dart';
import '../../../../utils/ui/button/social.dart';
import '../../../../utils/ui/linkText/link_text.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      isBackButton: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'login'.tr,
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 31.h),
          CustomTextField(
            controller: controller,
            hintText: 'email'.tr,
            labelText: 'email'.tr,
          ),
          SizedBox(height: 31.h),
          CustomTextField(
            controller: controller,
            hintText: 'password'.tr,
            labelText: 'password'.tr,
          ),
          SizedBox(height: 28.h),
          LinkText(title: 'Şifreni mi unuttun?'),
          SizedBox(height: 33.h),
          CustomButton(
            onPressed: () {
              Get.toNamed('/index');
            },
            text: 'login'.tr,
          ),
          SizedBox(height: 33.h),
          RowLinkText(
            title: 'dont_have_account'.tr,
            text: 'register'.tr,
            onTap: () {
              Get.toNamed('/register');
            },
          ),
          SizedBox(height: 60.h),
          DividerText(title: 'or'.tr, color: Colors.black),
          SizedBox(height: 15.h),
          SocialLoginButton(
            icon: 'google',
            title: 'GOOGLE',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
