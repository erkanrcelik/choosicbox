import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/ui/Input/GeneralInput/general_input.dart';
import '../../../../../../utils/ui/Input/passwordInput/password_input.dart';
import '../../../../../../utils/ui/Input/phoneInput/phone_number.dart';
import '../../securityView/passwordView/View/password_view.dart';


class ProfileSettingScreen extends StatelessWidget {
  ProfileSettingScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenProfilePicture(
                        imageAssetPath: 'assets/images/gecici.png',
                      ),
                    ),
                  );
                },
                child: Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/gecici.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
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
              SizedBox(height: 60),
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
              InkWell(
                onTap:() {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePasswordPageState(),
                  ),
                );},
                child: PasswordInput(
                  controller: controller,
                  hintText: 'Password',
                  labelText: 'Change Password',
                ),
              ),
              SizedBox(height: 20),
            ],
          )),
    );
  }
}

class FullScreenProfilePicture extends StatelessWidget {
  final String imageAssetPath;

  FullScreenProfilePicture({required this.imageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Hero(
          tag: imageAssetPath,
          child: Image.asset(imageAssetPath),
        ),
      ),
    );
  }
}
