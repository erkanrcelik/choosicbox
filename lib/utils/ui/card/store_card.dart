import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/path/svg_path.dart';

class StoreCard extends StatefulWidget {
  StoreCard({
    Key? key,
    required this.restaurant,
    required this.businessName,
    required this.cardTextList,
    this.onTap,
  }) : super(key: key);

  final String restaurant;
  final String businessName;
  final List<Widget> cardTextList;
  final VoidCallback? onTap;

  @override
  State<StoreCard> createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  double value = 5;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 266.w,
        height: 270.h,
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
                  height: 120.h,
                  child: Image.network(
                      'https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg',
                      fit: BoxFit.fill),
                ),
                Positioned(
                  top: 8.h,
                  left: 8.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.w),
                    ),
                    padding:
                        EdgeInsets.fromLTRB(2.w,2.h,7.w,2.h),
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, top: 13.h, bottom: 6.h),
              child: Text(
                widget.businessName,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, top:5.h, bottom: 10.h),
              child: RatingStars(
                value: value,
                starBuilder: (index, color) => Icon(
                  Icons.star,
                  size: 18.w,
                  color: color,
                ),
                starCount: 5,
                starSize: 18.w,
                valueLabelColor: Color(0xff9b9b9b),
                valueLabelPadding: EdgeInsets.symmetric(
                    vertical: 3.h, horizontal: 8.w),
                valueLabelTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0.sp),
                valueLabelRadius: 10,
                maxValue: 5,
                starSpacing: 1.w,
                maxValueVisibility: false,
                valueLabelVisibility: true,
                animationDuration: Duration(milliseconds: 1000),
                starOffColor: const Color(0xffe7e8ea),
                valueLabelMargin: EdgeInsets.only(right: 5.w),
                starColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 13.w, bottom: 15.h),
              child: Row(
                children: widget.cardTextList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
