import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/ui/Input/GeneralInput/general_input.dart';
import '../../../../../../utils/ui/Input/passwordInput/confirm_new_Password_input.dart';
import '../../../../../../utils/ui/Input/passwordInput/new_password_input.dart';
import '../../../../../../utils/ui/Input/passwordInput/password_input.dart';
import '../../../../../../utils/ui/Input/phoneInput/phone_number.dart';
import '../../../../../../utils/ui/button/general.dart';

class ProfileSettingScreen extends StatelessWidget {
  ProfileSettingScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
                        color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.primary,
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
                top: 100,
                left: 140,
                child: GestureDetector(
                  onTap: () {
                  },
                  child: const Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/gecici.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 140,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('user@example.com'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Positioned(
                left: 25,
                right: 25,
                top: 300,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      GeneralInput(
                        controller: controller,
                        hintText: "Bruce Williams",
                        labelText: "Full Name",
                      ),
                      SizedBox(height: 20),
                      PhoneNumberInput(
                        controller: controller,
                        hintText: 'Phone Number',
                        labelText: 'Phone Number',
                      ),
                      SizedBox(height: 20),
                      PasswordInput(
                        controller: _oldPasswordController,
                        hintText: "*******",
                        labelText: "Old Password",
                      ),
                      SizedBox(height: 20),
                      NewPasswordInput(
                        controller: _newPasswordController,
                        hintText: '*******',
                        labelText: 'New Password',
                      ),
                      SizedBox(height: 20),
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
      ),
    );
  }
}
