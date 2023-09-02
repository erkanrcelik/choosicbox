import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../profile/View/profile_view.dart';
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
                drawerListWidget(
                    icon: 'payment1', onTap: () {}, text: 'Payment Methods'),
                drawerListWidget(
                    icon: 'feedback', onTap: () {}, text: 'Contact Us'),
                drawerListWidget(
                    icon: 'settings', onTap: () {}, text: 'Settings'),
                drawerListWidget(
                    icon: 'support', onTap: () {}, text: 'Help & Support'),
                drawerListWidget(
                    icon: 'language', onTap: () {}, text: 'Languages'),
                SizedBox(height: 40.h),
                InkWell(
                  child: Container(
                    width: 120.w,
                    padding: const EdgeInsets.only(
                            left: 9, top: 9, bottom: 9, right: 14)
                        .r,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
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
