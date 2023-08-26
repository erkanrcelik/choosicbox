import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicTypeItem extends StatefulWidget {
  MusicTypeItem({
    Key? key,
    required this.icon,
    required this.text,
    this.isOrange = false,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final String text;
  bool isOrange;
  final VoidCallback? onTap;

  @override
  _MusicTypeItemState createState() => _MusicTypeItemState();
}

class _MusicTypeItemState extends State<MusicTypeItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      radius: 0.0,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
        setState(() {
          widget.isOrange = true;
        });
      },
      onHover: (isHovered) {
        setState(() {
          widget.isOrange = isHovered;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15.w, 30.w, 0.w, 40.w),
        height: 102.h,
        width: 80.w,
        decoration: BoxDecoration(
          boxShadow: [
            !widget.isOrange
                ? const BoxShadow(
              color: Color.fromRGBO(211, 209, 216, 0.25),
              offset: Offset(0, 20),
              blurRadius: 30,
              spreadRadius: 0,
            )
                : const BoxShadow(
              color: Color.fromRGBO(254, 114, 76, 0.25),
              offset: Offset(0, 20),
              blurRadius: 30,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(15).r,
          color: widget.isOrange ? const Color(0xffFE724C) : Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Image.asset('assets/images/${widget.icon}.png', height: 49.h, width: 49.w),
            SizedBox(
              height: 11.h,
            ),
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: widget.isOrange ? Colors.white : const Color(0xff67666D)),
            )
          ],
        ),
      ),
    );
  }
}
