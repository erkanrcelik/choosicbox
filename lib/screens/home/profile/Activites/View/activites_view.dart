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
            title: 'Çaldırılan toplam şarkılar',
            icon: Icon(
                Icons.music_note,
                color: Theme.of(context).colorScheme.surface,
            ),
            text: '150',
          ),
          SizedBox(height: 20.h),
          ActivitiesCard(
            width: MediaQuery.of(context).size.width.w,
            title: 'En son ziyaret edilen yerler',
            icon: Icon(
              Icons.place,
              color: Theme.of(context).colorScheme.surface,
            ),
            text: '40',
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Column(
                children: [
                  ActivitiesCard(
                    title: 'Begeniler',
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: '450',
                  ),
                  SizedBox(height: 20.h),
                  ActivitiesCard(
                    title: 'Istekler',
                    icon: Icon(
                      Icons.accessibility,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: '4',
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  ActivitiesCard(
                    title: 'Yorumlar',
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: '.....',
                  ),
                  SizedBox(height: 20.h),
                  ActivitiesCard(
                    title: 'Firsatlar',
                    icon: Icon(
                      Icons.campaign,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    text: '....',
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
