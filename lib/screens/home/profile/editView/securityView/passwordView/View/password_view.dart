import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../config/theme/colors.dart';
import '../../../../../../../utils/ui/Input/passwordInput/confirm_new_Password_input.dart';
import '../../../../../../../utils/ui/Input/passwordInput/new_password_input.dart';
import '../../../../../../../utils/ui/Input/passwordInput/password_input.dart';
import '../../../../../../../utils/ui/button/general.dart';



class ChangePasswordPageState extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
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
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: InkWell(
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
                    PasswordInput(
                      controller: _oldPasswordController,
                      hintText: "*******",
                      labelText: "Old Password",
                    ),
                    SizedBox(height: 47),
                    NewPasswordInput(
                      controller: _newPasswordController,
                      hintText: '*******',
                      labelText: 'New Password',
                    ),
                    SizedBox(height: 47),
                    ConfirmNewPasswordInput(
                      controller: _confirmPasswordController,
                      hintText: '*******',
                      labelText: 'Confirm New Password',
                    ),
                    SizedBox(height: 47),
                    CustomButton(
                      onPressed: () {  },
                      text: 'Submit',
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
