import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SettingsCard(
            onTap: () {
              Get.toNamed('/account-settings');
            },
            title: 'Hesap Ayarları',
            icon: Icon(Icons.account_circle),
          ),
          SizedBox(height: 20.h),
          SettingsCard(
            title: 'Dil ve Uygulama Ayarları',
            icon: Icon(Icons.settings),
          ),
          SizedBox(height: 20.h),
          SettingsCard(
            title: 'Çıkış Yap',
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
