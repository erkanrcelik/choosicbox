import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

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
        title: Center(child: Text('Hesabımı Sil')),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        child: Column(
          children: [
            SettingsCard(title: 'İletişim Tercihlerimi Güncelle'),
            SettingsCard(title: 'Hesap Giriş Geçmişi'),
            SettingsCard(title: 'Hesabımı Sil'),
          ],
        ),
      ),
    );
  }
}
