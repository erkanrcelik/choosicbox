import 'package:choosicbox/utils/ui/Input/inputs.dart';
import 'package:choosicbox/utils/ui/Input/models.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: const Text("falanfilan"),
        ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                      color: Color(0xFF414042),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  createCustomInput<TextInputProps>(
                    props: TextInputProps(
                      controller: _usernameController,
                      hintText: 'Username',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "E-mail ",
                    style: TextStyle(
                      color: Color(0xFF414042),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  createCustomInput<EmailInputProps>(
                      props: EmailInputProps(
                        controller: _emailController,
                        hintText: "Example@choosicbox.com"
                      )
                    )
                  ],
                ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFF414042),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  createCustomInput<PasswordInputProps>(
                      props: PasswordInputProps(
                        controller: _passwordController,
                        hintText: "Password"
                      )
                    )
                  ],
                ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: Color(0xFF414042),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  createCustomInput<ConfirmPasswordInputProps>(
                      props: ConfirmPasswordInputProps(
                        controller: _confPasswordController,
                        hintText: "Password"
                      )
                    )
                  ],
                ),
              const SizedBox(height: 25), // Boşluk ekleniyor
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFA93159),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextButton(
                  onPressed: () {
                    // Burada Sign In düğmesinin tıklama işlemlerini yapabilirsiniz.
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
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
