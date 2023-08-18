import 'package:flutter/material.dart';

import '../../../../config/path/svg_path.dart';
import '../../../../utils/ui/Container/clip_oval_bottom_container.dart';
import '../../../../utils/ui/Container/profile_settings_row.dart';

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
                              icon: SvgImageWidget(
                                svgPath: 'notification_icon.svg',
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgImageWidget(
                                svgPath: 'dotted_icon.svg',
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
                const Positioned(
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
                  const Column(
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
                  const SizedBox(
                    height: 33,
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
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
                            icon: SvgImageWidget(
                              svgPath: 'profile_information_icon.svg',
                            ),
                            title: 'Language'),
                        const SizedBox(
                          height: 13,
                        ),
                        SettingsRow(
                            icon: SvgImageWidget(
                              svgPath: 'notifications_icon.svg',
                            ),
                            title: 'Security'),
                        const SizedBox(
                          height: 13,
                        ),
                        SettingsRow(
                            icon: SvgImageWidget(
                              svgPath: 'language_icon.svg',
                            ),
                            title: 'Privacy'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
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
                            icon: SvgImageWidget(
                              svgPath: 'security_icon.svg',
                            ),
                            title: 'Language'),
                        const SizedBox(
                          height: 13,
                        ),
                        SettingsRow(
                            icon: SvgImageWidget(
                              svgPath: 'theme_icon.svg',
                            ),
                            title: 'Security'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
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
                            icon: SvgImageWidget(
                              svgPath: 'language_icon.svg',
                            ),
                            title: 'Language'),
                        const SizedBox(
                          height: 13,
                        ),
                        SettingsRow(
                            icon: SvgImageWidget(
                              svgPath: 'help_and_support_icon.svg',
                            ),
                            title: 'Security'),
                        const SizedBox(
                          height: 13,
                        ),
                        SettingsRow(
                            icon: SvgImageWidget(
                              svgPath: 'privacy_icon.svg',
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
      ),
    );
  }
}
