import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CommunicationUpdatesView extends StatelessWidget {
  const CommunicationUpdatesView({super.key});

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
        title: Text('İletişim Tercihlerimi Güncelle', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        child: Column(
          children: [
            Text("Dijital Platform Choosicbox Hizmetleri A.Ş.'den kampanyalar ve yenilikler hakkında aşağıda belirttiğim iletişim kanalları üzerinden bilgi almak istiyorum.",style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: 20.h,),
            SettingsCard(title: 'SMS',isSwitched: true),
            SettingsCard(title: 'E-posta adresi',isSwitched: true),
            SettingsCard(title: 'Telefon Numarasi',isSwitched: true),
            SizedBox(height: 20.h,),
            Text("*Kampanya ve yenilikler ile ilgili iletişim tercihlerinizi kapatatığınızda siparişleriniz ve üyelik ayarlarınızla ilgili e-posta, sms veya telefon almaya devam edebilirsiniz. ",style: Theme.of(context).textTheme.labelMedium,),


          ],
        ),
      ),
    );
  }
}
