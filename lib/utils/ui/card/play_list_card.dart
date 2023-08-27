import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayListCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String category;
  final VoidCallback onTap;

  const PlayListCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.category, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15).r,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15).r,
              child: Image.asset(
                imagePath,
                width: 65.w,
                height: 65.h,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.play_circle,
              size: 35.h,
              color: Color(0xFFFE724C),
            ),
          ],
        ),
      ),
    );
  }
}
