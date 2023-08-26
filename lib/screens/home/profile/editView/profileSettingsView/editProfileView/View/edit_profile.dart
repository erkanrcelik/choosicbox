import 'package:choosicbox/routes/app_pages.dart';
import 'package:choosicbox/screens/home/profile/View/profile_view.dart';
import 'package:choosicbox/utils/ui/textField/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../config/theme/colors.dart';
import '../../../../../../../utils/ui/Input/GeneralInput/general_input.dart';
import '../../../../../../../utils/ui/Input/passwordInput/password_input.dart';

import '../../../securityView/passwordView/View/password_view.dart';


class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
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
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/index");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              bottom: 150,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 37),
                    GeneralInput(
                      controller: controller,
                      hintText: "Bruce Williams",
                      labelText: "Full Name",
                    ),
                    SizedBox(height: 47),
                    CustomTextField(
                      controller: controller,
                      hintText: 'Phone Number',
                      labelText: 'Phone Number',
                    ),
                    SizedBox(height: 47),
                    InkWell(
                      onTap:() {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePasswordPageState(),
                        ),
                      );},
                      child: PasswordInput(
                        controller: controller,
                        hintText: 'Password',
                        labelText: 'Change Password',
                      ),
                    ),
                    SizedBox(height: 47),
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
