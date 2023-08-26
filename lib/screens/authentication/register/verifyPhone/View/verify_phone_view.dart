import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/ui/button/general.dart';
import '../../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../../utils/ui/textField/pin_code.dart';
import '../../../../../utils/ui/widget/row_link_text.dart';

class RegisterVerifyPhoneView extends StatelessWidget {
  RegisterVerifyPhoneView({Key? key}) : super(key: key);
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
                  'Telefonunu Doğrula'.tr,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lütfen 534 241 96 63 telefon numarasına gönderilen doğrulama kodunu yazın.'.tr,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 31.h),
              FractionallySizedBox(
                widthFactor: 1,
                child: PinCodeTextField(),
              ),
              SizedBox(height: 32.h),
              RowLinkText(title: 'Kod gelmedi mi', text: 'Tekrar gönder'),
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