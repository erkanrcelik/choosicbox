import 'package:choosicbox/screens/home/profile/editView/paymentView/View/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../profile/View/profile_view.dart';
import '../../../profile/editView/languageView/View/language_settings_view.dart';
import '../../../profile/editView/profileSettingsView/View/profile_setting_view.dart';
import '../../../profile/editView/profileSettingsView/help&supportView/View/help_support_view.dart';
import '../../../profile/editView/profileSettingsView/help&supportView/feedbackView/View/feedback_view.dart';
import 'drawerList/drawer_list.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: screenWidth * 0.8,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.only(left: 16).r,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage('assets/images/pp.png'),
                ),
                SizedBox(height: 20.h),
                Text('Reis Wick',
                    style: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.w600)),
                Text(
                  'reiswick@gmail.com',
                  style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                ),
                SizedBox(height: 30.h),
                const drawerListWidget(icon: 'document', text: 'My Orders'),
                drawerListWidget(
                    icon: 'profile1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePageView()),
                      );
                    },
                    text: 'My Profile'),
                const drawerListWidget(
                    icon: 'location', text: 'Delivery Adress'),
                drawerListWidget(
                    icon: 'wallet',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentSettingsScreen()),
                      );
                    },
                    text: 'Payment Methods'),
                drawerListWidget(
                    icon: 'message',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FeedbackScreen()),
                      );
                    },
                    text: 'Contact Us'),
                drawerListWidget(
                    icon: 'setting',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSettingScreen()),
                      );
                    },
                    text: 'Settings'),
                drawerListWidget(
                    icon: 'helps',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpAndSupportScreen()),
                      );
                    },
                    text: 'Help & Support'),
                drawerListWidget(
                    icon: 'language',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LanguageSettingsPage()),
                      );
                    },
                    text: 'Languages'),
                SizedBox(height: 50.h),
                InkWell(
                  child: Container(
                    width: 120.w,
                    padding: const EdgeInsets.only(
                            left: 9, top: 9, bottom: 9, right: 14)
                        .r,
                    decoration: BoxDecoration(
                        color: const Color(0xffFE724C),
                        borderRadius: BorderRadius.circular(29).r),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset('assets/buttons/log_out.png')),
                        SizedBox(width: 9.w),
                        Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
