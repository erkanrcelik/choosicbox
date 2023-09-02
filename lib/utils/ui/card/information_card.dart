import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationCard extends StatelessWidget {
  const InformationCard(
      {super.key, required this.title, required this.icon, required this.text});

  final String title;
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  SizedBox(width: 10.w),
                  Text(title,style:Theme.of(context).textTheme.bodySmall),
                ],
              ),
              Icon(Icons.edit,color: Theme.of(context).colorScheme.secondary,)
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 31.0.w),
            child: Text(text,style: Theme.of(context).textTheme.bodyMedium,),
          )
        ],
      ),
    );
  }
}
