import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h).r,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.black,
                ),
                SizedBox(height: 20.h),
                Text(
                  'erkanrcelik',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 30.h),
                drawerListWidget(
                    icon: 'profile', onTap: () {}, text: 'My Profile'),
                drawerListWidget(
                    icon: 'settings', onTap: () {}, text: 'Settings'),
                drawerListWidget(
                    icon: 'faq', onTap: () {}, text: 'Help & Support'),
                SizedBox(height: 160.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
