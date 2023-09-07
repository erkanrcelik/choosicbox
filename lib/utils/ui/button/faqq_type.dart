import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaqTypeItem extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor; // Use Color for background color
  final String text;
  final VoidCallback? onTap;

  FaqTypeItem({
    Key? key,
    required this.iconData,
    required this.backgroundColor,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      radius: 0.0,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(15.w, 30.w, 0.w, 40.w),
        height: 150.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          color: backgroundColor,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.w),
              child:Column (
                  children: [
                    Icon(
                    iconData, // Use the IconData to display the icon
                    color: Colors.white,
                  )],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.w),
              child: Text(
                text,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
