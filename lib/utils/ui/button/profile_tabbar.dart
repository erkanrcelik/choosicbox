import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTabbarButton extends StatefulWidget {
  ProfileTabbarButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isClicked = false,
  });

  final String title;
  final VoidCallback onTap;
  bool isClicked;

  @override
  State<ProfileTabbarButton> createState() => _ProfileTabbarButtonState();
}

class _ProfileTabbarButtonState extends State<ProfileTabbarButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
        setState(() {
          widget.isClicked = true;
        });
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF6F7789),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: widget.isClicked ? FontWeight.bold : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
