import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularStoreCard extends StatelessWidget {
  const PopularStoreCard({
    super.key,
    required this.image,
    required this.businessName,
    required this.description,
  });

  final String image;
  final String businessName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffD3D1D8),
          offset: Offset(0.w, 2.h), // X, Y offset
          blurRadius: 15,
          spreadRadius: 0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15).r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(15).r,
                        bottomRight: const Radius.circular(15).r)),
                child: Image.asset('assets/images/$image.png',
                    width: MediaQuery.sizeOf(context).width, height: 120.h,fit: BoxFit.fill,),),
            Positioned(
                top: -14.h,
                left: -15.w,
                child: Image.asset('assets/icons/price.png')),
            Positioned(
              top: -5.h,
              right: -3.w,
              child: Container(
                  padding: EdgeInsets.only(
                      top: 9.h ,left: 8.w, bottom: 7.h, right: 6.w),
                  child: Image.asset('assets/icons/favorite.png')),
            ),
            Positioned(
              bottom: -12.h,
              left: 13.w,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffD3D1D8),
                          offset: Offset(0, 2.h), // X, Y offset
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.only(
                      top: 9.h, left: 8.w, bottom: 7.h, right: 6.w),
                  child: Image.asset('assets/icons/rating.png')),
            ),
          ]),
          Container(
            padding: EdgeInsets.only(left: 14.w, top: 26.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  businessName,
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Text(
                  description,
                  style: TextStyle(
                      color: const Color(0xff5B5B5E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}