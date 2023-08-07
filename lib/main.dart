import 'package:choosicbox/utils/ui/Input/inputs.dart';
import 'package:choosicbox/utils/ui/Input/models.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ölçeklendirilebilir TextField'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your logo', // "Your logo" metni ekleniyor
                style: TextStyle(
                  color: Color(0xFF465685),
                  fontSize: 24,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 50), // Boşluk ekleniyor
              const Text(
                'Login', // "Login" metni ekleniyor
                style: TextStyle(
                  color: Color(0xFF414042),
                  fontSize: 38,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 50), // Boşluk ekleniyor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email', // Email metni ekleniyor
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
                      hintText: 'Username@gmail.com',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Boşluk ekleniyor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password', // Password metni ekleniyor
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
                      hintText: 'Password...',
                    ),
                  ),
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
                  Container(
                    width: 125,
                    height: 50,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("lib/assets/images/apple.png")
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFBCBEC0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25), // Yatay boşluk ekleniyor
                  Container(
                    width: 125,
                    height: 50,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage("lib/assets/images/google.png"),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFBCBEC0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
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
