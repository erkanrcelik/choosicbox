import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreCard extends StatelessWidget {
  StoreCard({
    Key? key,
    required this.restaurant,
    required this.businessName,
    required this.cardTextList, this.onTap,
  }) : super(key: key);

  final String restaurant;
  final String businessName;
  final List<Widget> cardTextList;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 266.w,
        margin: EdgeInsets.only(bottom: 30.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(211, 209, 216, 0.25),
              offset: Offset(15, 15),
              blurRadius: 30,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/$restaurant.png', fit: BoxFit.fill),
                ),
                Positioned(
                  top: 11.h,
                  left: 10.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.w),
                    ),
                    padding: EdgeInsets.all(8.w),
                    child: Image.asset('assets/icons/rating.png'),
                  ),
                ),
                Positioned(
                  top: -5.h,
                  right: -3.w,
                  child: Container(
                    padding: EdgeInsets.all(8.w),
                    child: Image.asset('assets/icons/favorite.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, top: 13.h, bottom: 6.h),
              child: Text(
                businessName,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, bottom: 10.h),
              child: Row(
                children: [
                  Image.asset('assets/icons/bike.png'),
                  SizedBox(width: 7.w),
                  Text(
                    'Free Delivery',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7E8392),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 13.w,bottom: 15.h),
              child: Row(
                children: cardTextList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
