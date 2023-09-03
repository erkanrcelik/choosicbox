import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageAppSettingsView extends StatelessWidget {
  const LanguageAppSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text('Dil ve Uygulama Ayarları', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        child: Column(
          children: [
            SettingsCard(
              onTap: () {
                Get.toNamed('/language-settings');
              },
              title: 'Dil Ayarları',
              icon: Icon(Icons.language),
            ),
            SizedBox(height: 20.h,),
            SettingsCard(
              isSwitched: true,
              title: 'Animasyonlari kapat',
              icon: Icon(Icons.animation),
            ),
          ],
        ),
      ),
    );
  }
}
