import 'package:choosicbox/utils/ui/button/faq_form.dart';
import 'package:choosicbox/utils/ui/button/faqq_type.dart';
import 'package:custom_accordion/custom_accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FaqSettingsView extends StatelessWidget {
  FaqSettingsView({super.key});

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
        title: Text(
          'Destek',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: Container(
                margin: EdgeInsets.only(top: 19.h, bottom: 0.h),
                height: 70.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Size Nasil Yardimci Olabiliriz?",
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FaqTypeItem(
                        text: 'Rehber',
                        backgroundColor: Colors.black12,
                        iconData: Icons.start,
                      ),
                      FaqTypeItem(
                        text: 'Restoran Sorunları',
                        backgroundColor: Colors.black12,
                        iconData: CupertinoIcons.info,
                      ),
                      FaqTypeItem(
                        text: 'Müzik Açma',
                        backgroundColor: Colors.black12,
                        iconData: CupertinoIcons.info,
                      ),
                      FaqTypeItem(
                        text: 'Kullanıcı Bilgileri',
                        backgroundColor: Colors.black12,
                        iconData: CupertinoIcons.info,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: Container(
                margin: EdgeInsets.only(right: 24.w),
                height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'En çok sorulanlar',
                      style: TextStyle(
                          color: const Color(0xff323643),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Tamamını Gör',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.grey,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.blue,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.red,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.brown,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.white24,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FaqFormAccordion(
                    title: "How to create a account?",
                    description: 'Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account.',
                    backgroundColor:  Colors.white24,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
