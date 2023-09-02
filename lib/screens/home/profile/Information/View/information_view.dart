import 'package:choosicbox/utils/ui/card/information_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          InformationCard(
            title: 'Ad Soyad',
            icon: const Icon(Icons.person),
            text: 'Erkan Çelik',
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'Telefon Numarası',
            icon: const Icon(Icons.phone),
            text: '+90 534 241 96 63',
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'E-Posta',
            icon: const Icon(Icons.email),
            text: 'erkan.celik@gmail.com',
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'Şifre',
            icon: const Icon(Icons.password),
            text: '**********',
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
