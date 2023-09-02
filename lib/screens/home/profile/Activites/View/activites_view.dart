import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/ui/card/activities_card.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          ActivitiesCard(
            width: MediaQuery.of(context).size.width.w,
            title: 'Açılan toplam şarkılar',
            icon: Icon(Icons.person),
            text: '150',
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Column(
                children: [
                  ActivitiesCard(
                    title: 'Aylık çalınan şarkı',
                    icon: Icon(
                      Icons.music_note,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: 'Hakkımda',
                  ),
                  SizedBox(height: 20.h),
                  ActivitiesCard(
                    title: 'Hakkımda',
                    icon: Icon(
                      Icons.music_note,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: 'Hakkımda',
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  ActivitiesCard(
                    title: 'Hakkımda',
                    icon: Icon(
                      Icons.music_note,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: 'Hakkımda',
                  ),
                  SizedBox(height: 20.h),
                  ActivitiesCard(
                    title: 'Alınan Beğeni',
                    icon: Icon(
                      Icons.music_note,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: '15',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
