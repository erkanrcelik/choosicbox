import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageSettingsView extends StatelessWidget {
  const LanguageSettingsView({super.key});

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
        title: Text('Dil Ayarları', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
