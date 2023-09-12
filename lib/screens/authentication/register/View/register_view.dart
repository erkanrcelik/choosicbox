import 'package:choosicbox/utils/ui/layout/authenticatin_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/ui/button/general.dart';
import '../../../../utils/ui/button/social.dart';
import '../../../../utils/ui/textField/custom_text_field.dart';
import '../../../../utils/ui/widget/divider_text.dart';
import '../../../../utils/ui/widget/row_link_text.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController controller = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      isBackButton: true,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                hintText: 'phone'.tr,
                labelText: 'phone'.tr,
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: controller,
                hintText: 'email'.tr,
                labelText: 'email'.tr,
              ),
              SizedBox(height: 25.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'register_information_text1'.tr,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                    TextSpan(
                        text: 'register_text2'.tr,
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'checkobx_information_text_2'.tr,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                      TextSpan(
                          text: 'checkobx_text1'.tr,
                          style: Theme.of(context).textTheme.titleMedium),
                      TextSpan(
                        text: 'checkobx_information_text_3'.tr,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                      TextSpan(
                          text: 'checkobx_text2'.tr,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              SizedBox(height: 20.h,),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'checkobx_text3'.tr,
                          style: Theme.of(context).textTheme.titleMedium),
                      TextSpan(
                        text: 'checkobx_information_text_4'.tr,
                        style:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                          text: 'checkobx_text4'.tr,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              SizedBox(height: 33.h),
              CustomButton(
                onPressed: () {
                  Get.toNamed('/register-verify-phone');
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
            ],
          ),
        ),
      ),
    );
  }
}
