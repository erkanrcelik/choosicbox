import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/ui/button/general.dart';
import '../../../../../utils/ui/textField/custom_text_field.dart';

class RegisterPersonalInformationView extends StatelessWidget {
  RegisterPersonalInformationView({Key? key}) : super(key: key);
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
                  'Kişisel Bilgiler'.tr,
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Kişisel Bilgilerinizi Girin'.tr,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 33.h),
              CustomTextField(
                controller: controller,
                hintText: 'Ad Soyad'.tr,
                labelText: 'Ad Soyad'.tr,
              ),
              SizedBox(height: 25.h),
              CustomTextField(
                controller: controller,
                hintText: 'password'.tr,
                labelText: 'password'.tr,
              ),
              SizedBox(height: 25.h),
              CustomTextField(
                controller: controller,
                hintText: 'password_again'.tr,
                labelText: 'password_again'.tr,
              ),
              SizedBox(height: 33.h),
              CustomButton(
                onPressed: () {
                  Get.toNamed('/register-verify-phone');
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
