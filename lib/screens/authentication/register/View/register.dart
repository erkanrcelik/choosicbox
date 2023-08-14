import 'package:choosicbox/utils/ui/Input/GeneralInput/general_input.dart';
import 'package:choosicbox/utils/ui/Input/passwordInput/password_input.dart';
import 'package:flutter/material.dart';

import '../../../../utils/ui/Button/GeneralButton/general_button.dart';
import '../../../../utils/ui/Input/eMailInput/email_input.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confPasswordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                hintText: 'Ad Soyad',
                labelText: 'Ad Soyad giriniz',
              ),
              const SizedBox(height: 30),
              EmailInput(
                controller: _emailController,
                hintText: 'E-mail adresinizi girin',
                labelText: 'E-Mail',
              ),
              const SizedBox(height: 30),
              PasswordInput(
                controller: _passwordController,
                hintText: 'Şifrenizi girin',
                labelText: 'Şifre',
              ),
              const SizedBox(height: 30),
              PasswordInput(
                controller: _confPasswordController,
                hintText: 'Şifrenizi tekrar girin',
                labelText: 'Şifre Tekrar',
              ),
              const SizedBox(height: 25), // Boşluk ekleniyor
              CustomButton(
                onPressed: () {
                  // Sign In düğmesinin tıklama işlemlerini burada yapabilirsiniz.
                },
                text: 'Sign In',
                backgroundColor: const Color(0xFFA93159),
                textColor: Colors.white,
                width: 200,
                height: 50,
                borderRadius: 40,
              ),
              const SizedBox(height: 50), // Boşluk ekleniyor
              const Column(
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
                  Text(
                    'Log In',
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
