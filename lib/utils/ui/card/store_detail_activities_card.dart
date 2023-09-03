import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/path/svg_path.dart';

class StoreDetailActivitiesCard extends StatelessWidget {
  const StoreDetailActivitiesCard({super.key, required this.color, required this.title, required this.svgPath, required this.song, this.artist, required this.width, required this.height, this.repeat});

  final Color color;
  final String title;
  final String svgPath;
  final String song;
  final String? artist;
  final String? repeat;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
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
      child: Column(
        crossAxisAlignment: artist != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              height: 50.h,
              padding: EdgeInsets.only(left: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: color,
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
              child: Row(
                children: [
                  SvgPath(
                    svgPath: svgPath,
                    width: 30.w,
                    height: 30.h,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),)
                ],
              ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  song,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 5.h,
                ),
                artist != null ?
                Text(
                  '- $artist',
                  style: Theme.of(context).textTheme.labelSmall,
                ):
                SizedBox(),
                SizedBox(
                  height: 5.h,
                ),
                repeat != null ?
                Text(
                  '$repeat kez çalındı.',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.teal),
                ):
                SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
