import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/ui/button/general.dart';
import '../../../../../utils/ui/textField/custom_text_field.dart';

class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      isBackButton: true,
      alignment: Alignment.center,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'register'.tr,
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              CustomTextField(
                controller: controller,
                hintText: 'password'.tr,
                labelText: 'password'.tr,
              ),
              SizedBox(height: 50.h),
              CustomTextField(
                controller: controller,
                hintText: 'password_again'.tr,
                labelText: 'password_again'.tr,
              ),
              SizedBox(height: 50.h),
              CustomButton(
                onPressed: () {
                  Get.toNamed('/index');
                },
                text: 'continue'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
