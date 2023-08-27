import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String category;

  const SearchCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15).r,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(211, 209, 216, 0.5),
            offset: Offset(0, 0),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15).r,
            child: Image.asset(
              imagePath,
              width: 80.w,
              height: 80.h,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 20.w),
          Expanded(
            child: Column(
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
          ),
          Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5).r,
              color: const Color(0xFFFE724C),
            ),
            child: const Icon(
              Icons.arrow_forward,
              size: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
