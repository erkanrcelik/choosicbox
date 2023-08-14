import 'package:choosicbox/screens/authentication/login/View/login.dart';
import 'package:choosicbox/utils/ui/Input/GeneralInput/general_input.dart';
import 'package:choosicbox/utils/ui/Input/passwordInput/password_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/ui/Button/GeneralButton/general_button.dart';
import '../../../../utils/ui/Input/eMailInput/email_input.dart';
import '../../loading/View/loading_screen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confPasswordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0), // Add padding to the whole screen
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                      color: Color(0xFF465685),
                      fontSize: 24,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 30),
                  GeneralInput(
                    controller: _usernameController,
                    hintText: 'mike144',
                    labelText: 'Username',
                  ),
                  const SizedBox(height: 30),
                  EmailInput(
                    controller: _emailController,
                    hintText:'Example@gmail.com' ,
                    labelText: 'E-mail ',
                  ),
                  const SizedBox(height: 30),
                  PasswordInput(
                    controller: _passwordController,
                    hintText: '1234',
                    labelText: 'password',
                  ),
                  const SizedBox(height: 30),
                  PasswordInput(
                    controller: _confPasswordController,
                    hintText: '1234',
                    labelText: 'Confirm password',
                  ),
                  const SizedBox(height: 25), // Boşluk ekleniyor
                  Center(
                    child: CustomButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoadingScreen()),
                        );
                      },
                      text: 'Sign In',
                    ),
                  ),
                  const SizedBox(height: 50), // Boşluk ekleniyor
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Color(0xFFBCBEC0),
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 16,),
                        InkWell(
                          onTap: () {
                            Get.to(LoginScreen());
                          },
                          child: Text(
                            'Log in...',
                            style: TextStyle(
                              color: Color(0xFF465685),
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),),

        ),
      ),
    );
  }
}

