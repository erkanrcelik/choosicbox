import 'package:flutter/material.dart';

import '../../../../config/path/svg_path.dart';
import '../../../../utils/ui/Container/clip_oval_bottom_container.dart';
import '../../../../utils/ui/Container/profile_settings_row.dart';
import '../../storeDetail/View/store_detail_screen.dart';
import '../editView/feedbackView/View/feedback_view.dart';
import '../editView/help&supportView/View/help_support_view.dart';
import '../editView/historyView/View/music_history_view.dart';
import '../editView/languageView/View/language_view.dart';
import '../editView/paymentView/View/payment_view.dart';
import '../editView/privacyView/View/privacy_view.dart';

import '../editView/settingsView/View/settings_view.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    ClipOvalBottomContainer(
                      height: 263,
                      color: Color(0xFFEBF0F0),
                      borderRadius: 40,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPath(
                                svgPath: 'notification_icon',
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileSettingsScreen()),
                                );
                              },
                              icon: SvgPath(
                                svgPath: 'dotted_icon',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    // Avatar'ı yukarı taşımak için boşluk bırakıyoruz
                  ],
                ),
                Positioned(
                  top: 180,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
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
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Kullanıcı Adı',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('user@example.com'),
                          SizedBox(width: 10),
                          Text('(123) 456-7890'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LanguageSelectionScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'language_icon',
                            ),
                            title: 'Language',
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MusicHistoryScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'profile_information_icon',
                            ),
                            title: 'History',
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileSettingsScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'settings_icon',
                            ),
                            title: 'Settings',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      padding: EdgeInsets.all(14),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentSettingsScreen()),
                              );
                            },
                            child: SettingsRow(
                              icon: SvgPath(
                                svgPath: 'settings_icon',
                              ),
                              title: 'Payment',
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrivacySettingsScreen()),
                              );
                            },
                            child: SettingsRow(
                              icon: SvgPath(
                                svgPath: 'privacy_icon',
                              ),
                              title: 'Privacy',
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedbackScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'contact_icon',
                            ),
                            title: 'Feedback',
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HelpAndSupportScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'help_and_support_icon',
                            ),
                            title: 'Help & Support',
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StoreDetailScreen()),
                            );
                          },
                          child: SettingsRow(
                            icon: SvgPath(
                              svgPath: 'logout_icon',
                            ),
                            title: 'Log Out',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
