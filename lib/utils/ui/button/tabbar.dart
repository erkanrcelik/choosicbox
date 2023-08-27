import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabbarButton extends StatefulWidget {
  TabbarButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isOrange = false,
  });

  final String title;
  final VoidCallback onTap;
  bool isOrange;

  @override
  State<TabbarButton> createState() => _TabbarButtonState();
}

class _TabbarButtonState extends State<TabbarButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
        setState(() {
          widget.isOrange = true;
        });
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: widget.isOrange
                ? BorderSide(
                    color: Color(0xFFFE724C),
                    width: 3,
                  )
                : BorderSide(
                    color: Colors.transparent,
                    width: 3,
                  ),
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF6F7789),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
