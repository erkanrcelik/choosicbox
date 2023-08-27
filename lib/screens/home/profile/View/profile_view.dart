import 'package:flutter/material.dart';

import '../../../../utils/ui/ListTile/activity_list_view.dart';
import '../../../../utils/ui/ListTile/profile_list_tile.dart';
import '../editView/ActivitiesView/View/activities_view.dart';
import '../editView/notificationsView/View/notifications_view.dart';
import '../editView/paymentView/View/payment_view.dart';
import '../editView/profileSettingsView/View/profile_setting_view.dart';
import '../editView/profileSettingsView/help&supportView/View/help_support_view.dart';
import 'package:choosicbox/generated/assets.dart';
class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.notification_add_sharp,
                          size: 30,
                        ),
                      ),
                    ),
                  )),
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
                child: const Center(
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
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ActivitiesPage()),
                            );
                          },
                          child: Text(
                            'View Activity',
                            style: TextStyle(
                              color: Colors.deepOrange, // Use the hex color value for --red
                              fontFamily: 'Metropolis',
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
              ),
              SizedBox(height: 16),
              ActivitiesListTile(
                title: "Kalan Kullanimlarim",
                image: 'assets/icons/orderhistory.png',
              ),
              SizedBox(height: 30),
              ProfileListTile(
                title: "Profil Bilgilerim",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileSettingScreen()),
                  );
                },
                image: Assets.iconsProfileIcon,
              ),
              SizedBox(height: 16),
              ProfileListTile(
                title: "Odemeler",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentSettingsScreen()),
                  );
                },
                image: 'assets/icons/payment1.png',
              ),
              SizedBox(height: 16),
              ProfileListTile(
                  title: "Help & Support",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HelpAndSupportScreen()),
                    );
                  },
                  image: 'assets/icons/support.png'),
              SizedBox(height: 16),
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
