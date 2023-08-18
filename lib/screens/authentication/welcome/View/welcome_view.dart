import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(28, 160, 28, 49),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                          fontSize: 53,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      'Choosicbox',
                      style: TextStyle(
                          fontSize: 53,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.firstColor),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Sign In With',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPath(
                                    svgPath: 'facebook_icon',
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPath(
                                    svgPath: 'google_icon',
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.sizeOf(context).width,
                      height: 54,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0x35ffffff)),
                      child: Text(
                        'Start with email or phone',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 40, // Adjust the top position as needed
            right: 20, // Adjust the right position as needed
            child: TextButton(
              onPressed: () {
                // Add the action you want the "Skip" button to perform
                // For example, you might want to navigate to another screen.
              },
              child: Container(
                  width: 55,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.405933380126953),
                      color: Colors.white),
                child: Text('Skip', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.firstColor,
                ),)
              )
            ),
          ),
        ],
      ),
    );
  }
}
