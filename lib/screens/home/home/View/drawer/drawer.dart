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
      elevation: 0,
      width: screenWidth * 0.6,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 60,
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
                const drawerListWidget(icon: 'profile', text: 'My Profile'),
                const drawerListWidget(
                    icon: 'location', text: 'Delivery Adress'),
                const drawerListWidget(icon: 'wallet', text: 'Payment Methods'),
                const drawerListWidget(icon: 'message', text: 'Contact Us'),
                const drawerListWidget(icon: 'setting', text: 'Settings'),
                const drawerListWidget(icon: 'helps', text: 'Help & FAQs'),
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
