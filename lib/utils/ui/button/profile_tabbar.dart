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
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: widget.isClicked ? 13.sp : 12.sp,
            fontFamily: 'Poppins',
            fontWeight: widget.isClicked ? FontWeight.bold : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
