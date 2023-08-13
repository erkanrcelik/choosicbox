import 'package:choosicbox/utils/ui/Input/passwordInput/password_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/ui/Button/GeneralButton/general_button.dart';
import '../../../utils/ui/Button/SocialButton/social_button.dart';
import '../../../utils/ui/Input/eMailInput/email_input.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
              const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF465685),
                  fontSize: 38,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                ),
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
                  // Sign In düğmesinin tıklama işlemlerini burada yapabilirsiniz.
                },
                text: 'Log In',
                backgroundColor: const Color(0xFFA93159),
                textColor: Colors.white,
                width: 200,
                height: 50,
                borderRadius: 40,
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
                    icon: Icons.facebook,
                    onPressed: () {
                      // Facebook girişi tıklama işlemlerini burada yapabilirsiniz.
                    },
                    backgroundColor: Colors.white,
                    iconColor: Colors.black,
                    width: 125,
                    height: 50,
                    borderRadius: 40,
                  ),
                  const SizedBox(width: 25), // Yatay boşluk ekleniyor
                  SocialLoginButton(
                    icon: Icons.facebook,
                    onPressed: () {
                      // Facebook girişi tıklama işlemlerini burada yapabilirsiniz.
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
              const Column(
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
                  Text(
                    'Register for free',
                    style: TextStyle(
                      color: Color(0xFF465685),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
