import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivitiesCard extends StatelessWidget {
  ActivitiesCard(
      {super.key, required this.title, required this.icon, required this.text, this.width});

  final String title;
  final Widget icon;
  final String text;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null ? 160.w : width,
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 20.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: icon,
                ),
              ),
              SizedBox(width: 10.w),
              Text(title, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          SizedBox(height: 25.h),
          Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
