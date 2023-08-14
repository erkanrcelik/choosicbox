import 'package:choosicbox/screens/authentication/register/View/register.dart';
import 'package:choosicbox/utils/ui/Input/GeneralInput/general_input.dart';
import 'package:choosicbox/utils/ui/Input/passwordInput/password_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xFF110C26),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                const SizedBox(height: 20),
                GeneralInput(
                  controller: _usernameController,
                  hintText: 'mike144',
                  labelText: 'Username',
                ),
                const SizedBox(height: 20),
                PasswordInput(
                  controller: _passwordController,
                  hintText: '1234',
                  labelText: 'Password',
                ),
                const SizedBox(height: 60),
                Center(
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoadingScreen()),
                      );
                    },
                    text: 'Log In',
                  ),
                ),
                const SizedBox(height: 60),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        'or continue with',
                        style: TextStyle(
                          color: Color(0xFF798995),
                          fontSize: 14,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialLoginButton(
                        icon: Icons.apple,
                        onPressed: () {
                          // Add Apple sign-in logic
                        },
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        width: 125,
                        height: 50,
                        borderRadius: 40,
                      ),
                      const SizedBox(width: 45),
                      SocialLoginButton(
                        icon: Icons.android,
                        onPressed: () {
                          // Add Android sign-in logic
                        },
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        width: 125,
                        height: 50,
                        borderRadius: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Center(
                  child: Column(
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
                      SizedBox(height: 16,),
                      InkWell(
                        onTap: () {
                          Get.to(RegisterScreen());
                        },
                        child: Text(
                          'Register for free...',
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
          ),
        ),
      ),
    );
  }
}
