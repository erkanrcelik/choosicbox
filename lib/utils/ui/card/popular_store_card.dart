import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularStoreCard extends StatelessWidget {
  const PopularStoreCard({
    super.key,
    required this.image,
    required this.businessName,
    required this.cardTextList,
  });

  final String image;
  final String businessName;
  final List<Widget> cardTextList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510.h,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffD3D1D8), offset: Offset(0.w, 2.h), // X, Y offset
          blurRadius: 15, spreadRadius: 0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15).r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(15).r,
                        bottomRight: const Radius.circular(15).r)),
                child: Image.network(
                  'https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg',
                  width: MediaQuery.sizeOf(context).width,
                  height: 120.h,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: -12.h,
                left: 13.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.w),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffD3D1D8), offset: Offset(0.w, 2.h), // X, Y offset
                        blurRadius: 15, spreadRadius: 0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC529),
                        size: 19,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '(25+)',
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff323643),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 14.w, top: 26.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  businessName,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.w),
                  ),
                  child: Row(
                    children: [
                      SvgPath(svgPath: 'close_location'),
                      Text(
                        '30m',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  child: Row(
                    children: cardTextList,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
