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
            title: 'Kullanıcı Adı',
            icon: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.surface,
            ),
            text: 'erkanr.celik',
            editIcon: true,
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'Telefon Numarası',
            icon:
                Icon(color: Theme.of(context).colorScheme.surface, Icons.phone),
            text: '+90 534 241 96 63',
            editIcon: true,
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'E-Posta',
            icon:
                Icon(color: Theme.of(context).colorScheme.surface, Icons.email),
            text: 'erkan.celik@gmail.com',
          ),
          SizedBox(height: 25.h),
          InformationCard(
            title: 'Şifre',
            icon: Icon(
                color: Theme.of(context).colorScheme.surface, Icons.password),
            text: '**********',
            editIcon: true,
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
