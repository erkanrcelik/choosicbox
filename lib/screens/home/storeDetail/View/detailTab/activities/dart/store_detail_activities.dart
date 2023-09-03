import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../utils/ui/card/store_detail_activities_card.dart';

class StoreDetailActivitiesView extends StatelessWidget {
  const StoreDetailActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.r,
                  blurRadius: 1.r,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1.r,
                        blurRadius: 1.r,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SvgPath(
                    svgPath: 'music',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Şu an çalan müzik',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Firuze',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '- Sezen Aksu',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0.w,right: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    StoreDetailActivitiesCard(
                      color: Colors.blue,
                      title: 'En çok çalınan şarkı',
                      svgPath: 'music',
                      artist: 'Sezen Aksu',
                      repeat: '10',
                      song: 'Firuze',
                      height: 155.h,
                      width: 200.w,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    StoreDetailActivitiesCard(
                      color: Colors.orange,
                      title: 'Fiyat',
                      svgPath: 'music',
                      song: '30 TL',
                      height: 125.h,
                      width: 120.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
