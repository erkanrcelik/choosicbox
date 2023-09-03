import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

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
        title: Text('Hesap Ayarları',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        child: Column(
          children: [
            SettingsCard(
                onTap: (){
                  Get.toNamed('/communication-updates');
                },
                title: 'İletişim Tercihlerimi Güncelle',
                icon: Icon(
                    Icons.quick_contacts_mail_outlined,
                    color: Theme.of(context).colorScheme.surface,
                ),
            ),
            SizedBox(height: 20.h,),
            SettingsCard(
              title: 'Çıkış Yap',
              icon: Icon(
                  Icons.logout,
                  color: Theme.of(context).colorScheme.surface,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
