import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaqFormAccordion extends StatelessWidget {
  const FaqFormAccordion({super.key, required this.title, required this.description, required this.backgroundColor});

  final String title;
  final String description;
  final Color backgroundColor;



  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        child:ExpansionTile(
          title: Text(title, style: Theme.of(context).textTheme.titleLarge,),
          children: [
            Container(
              color: Colors.white,
              padding:EdgeInsets.symmetric(vertical: 15.h,horizontal: 20.h),
              child:  Text(description, style: Theme.of(context).textTheme.labelSmall,) ,
            )
          ],
        )
    );
  }
}
