import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/ui/button/general.dart';
import '../../../../utils/ui/button/social.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      isBackButton: true,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'register'.tr,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50.h),
              CustomTextField(
                controller: controller,
                hintText: 'email'.tr,
                labelText: 'email'.tr,
              ),
              SizedBox(height: 50.h),
              CustomButton(
                onPressed: () {
                  Get.toNamed('/register-verify-mail');
                },
                text: 'continue'.tr,
              ),
              SizedBox(height: 33.h),
              RowLinkText(
                title: 'have_account'.tr,
                text: 'login'.tr,
                onTap: () {
                  Get.toNamed('/login');
                },
              ),
              SizedBox(height: 120.h),
              DividerText(title: 'or'.tr, color: Colors.black),
              SizedBox(height: 20.h),
              SocialLoginButton(
                icon: 'google',
                title: 'GOOGLE',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
