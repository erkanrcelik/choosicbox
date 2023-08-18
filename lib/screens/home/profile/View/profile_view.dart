import 'package:flutter/material.dart';

import '../../../../config/path/svg_path.dart';
import '../../../../utils/ui/Container/clip_oval_bottom_container.dart';
import '../../../../utils/ui/Container/profile_settings_row.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            onPressed: () {},
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
                child: Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile_image.jpg'),
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
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'profile_information_icon',
                          ),
                          title: 'Language'),
                      SizedBox(
                        height: 13,
                      ),
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'notifications_icon',
                          ),
                          title: 'Security'),
                      SizedBox(
                        height: 13,
                      ),
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'language_icon',
                          ),
                          title: 'Privacy'),
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
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'security_icon',
                          ),
                          title: 'Language'),
                      SizedBox(
                        height: 13,
                      ),
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'theme_icon',
                          ),
                          title: 'Security'),
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
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'language_icon',
                          ),
                          title: 'Language'),
                      SizedBox(
                        height: 13,
                      ),
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'help_and_support_icon',
                          ),
                          title: 'Security'),
                      SizedBox(
                        height: 13,
                      ),
                      SettingsRow(
                          icon: SvgPath(
                            svgPath: 'privacy_icon',
                          ),
                          title: 'Privacy'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
