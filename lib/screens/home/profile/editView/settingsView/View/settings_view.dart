import 'package:choosicbox/screens/home/profile/View/profile_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/theme/colors.dart';
import '../../../../../../utils/ui/Input/GeneralInput/general_input.dart';
import '../../../../../../utils/ui/Input/eMailInput/email_input.dart';
import '../../../../../../utils/ui/Input/passwordInput/password_input.dart';

class ProfileSettingsScreen extends StatelessWidget {
  ProfileSettingsScreen({Key? key}) : super(key: key);
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
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePageView()),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              bottom: 60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullScreenProfilePicture(),
                          ),
                        );
                        },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                            AssetImage('assets/images/gecici.png'),
                          ),
                          Container(
                            width: 27,
                            height: 27,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 27,
                                    height: 27,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: OvalBorder(),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x66C4C4C4),
                                          blurRadius: 15,
                                          offset: Offset(0, 3),
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 9,
                                  child: Container(
                                    width: 11,
                                    height: 9.90,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Image.asset(
                                              'assets/images/editpic.svg'), // Add your image path here
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 37),
                    GeneralInput(
                      controller: controller,
                      hintText: "Mike gllk",
                      labelText: "Full Name",
                    ),
                    SizedBox(height: 47),
                    EmailInput(
                      controller: controller,
                      hintText: 'Your email or phone',
                      labelText: 'E-mail',
                    ),
                    SizedBox(height: 47),
                    PasswordInput(
                      controller: controller,
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    SizedBox(height: 47),
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
class FullScreenProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfileSettingsScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'profilePicture', // Use the same tag as in the ProfileSettingsScreen
          child: Image.asset('assets/images/gecici.png'),
        ),
      ),
    );
  }
}
