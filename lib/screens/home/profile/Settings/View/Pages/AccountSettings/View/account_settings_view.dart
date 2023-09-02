import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
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
        title: Text('Hesap Ayarları'),
      ),
      body: Column(
        children: [
          SettingsCard(title: 'İletişim Tercihlerimi Güncelle'),
          SettingsCard(title: 'Hesap Giriş Geçmişi'),
          SettingsCard(title: 'Hesabımı Sil'),
        ],
      ),
    );
  }
}
