import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/path/svg_path.dart';

class CloseLocationMiniCard extends StatefulWidget {
  const CloseLocationMiniCard({
    Key? key,
    required this.location,
    required this.businessName,
    this.onTap,
  }) : super(key: key);

  final String location;
  final String businessName;
  final VoidCallback? onTap;

  @override
  State<CloseLocationMiniCard> createState() => _CloseLocationMiniCardState();
}

class _CloseLocationMiniCardState extends State<CloseLocationMiniCard> {
  double value = 4;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 157.h,
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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70.h,
              decoration: BoxDecoration(),
              child: Image.network(
                'https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.w,0.h,5.w,5.h),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.businessName,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      RatingStars(
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
                        valueLabelMargin: EdgeInsets.only(top: 8.0.h,right: 5.w),
                        starColor: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPath(svgPath: 'close_location'),
                          Text(
                            widget.location,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
