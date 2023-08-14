import 'package:choosicbox/screens/authentication/register/View/register.dart';
import 'package:choosicbox/utils/ui/Input/passwordInput/password_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/ui/Button/GeneralButton/general_button.dart';
import '../../../../utils/ui/Button/SocialButton/social_button.dart';
import '../../../../utils/ui/Input/eMailInput/email_input.dart';
import '../../loading/View/loading_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0), // Add padding to the entire column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your logo",
                  style: TextStyle(
                    color: Color(0xFF465685),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color(0xFF110C26),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // Add other widgets here if needed
                  ],
                ),
                const SizedBox(height: 50),
                EmailInput(
                  controller: _usernameController,
                  hintText: 'E-mail adresinizi girin',
                  labelText: 'E-Mail',
                ),
                const SizedBox(height: 16), // Boşluk ekleniyor
                PasswordInput(
                  controller: _passwordController,
                  hintText: 'Şifrenizi girin',
                  labelText: 'Şifre',
                ),
                const SizedBox(height: 25), // Boşluk ekleniyor
                CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoadingScreen()),
                    );
                  },
                  text: 'Log In',
                ),
                const SizedBox(height: 50), // Boşluk ekleniyor
                const Text(
                  'or continue with',
                  style: TextStyle(
                    color: Color(0xFF798995),
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 50), // Boşluk ekleniyor
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(
                      icon: Icons.apple,
                      onPressed: () {

                      },
                      backgroundColor: Colors.white,
                      iconColor: Colors.black,
                      width: 125,
                      height: 50,
                      borderRadius: 40,
                    ),
                    const SizedBox(width: 25), // Yatay boşluk ekleniyor
                    SocialLoginButton(
                      icon: Icons.android,
                      onPressed: () {

                      },
                      backgroundColor: Colors.white,
                      iconColor: Colors.black,
                      width: 125,
                      height: 50,
                      borderRadius: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 100), // Boşluk ekleniyor
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account yet?',
                      style: TextStyle(
                        color: Color(0xFFBCBEC0),
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap:(){Get.to(RegisterScreen());},
                      child: Text(
                        'Register for free',
                        style: TextStyle(
                          color: Color(0xFF465685),
                          fontSize: 14,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
