import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CloseLocationMiniCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 130.h,
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
              child: Image.asset(
                'assets/images/restaurant.png',
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
                        businessName,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_rounded),
                          Text(
                            location,
                            style: Theme.of(context).textTheme.labelSmall,
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
