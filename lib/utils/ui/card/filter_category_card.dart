import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCategoryCard extends StatefulWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  FilterCategoryCard({
    required this.text,
    this.selected = false,
    required this.onTap,
  });

  @override
  _FilterCategoryCardState createState() => _FilterCategoryCardState();
}

class _FilterCategoryCardState extends State<FilterCategoryCard> {
  @override
  Widget build(BuildContext context) {
    final textSpan = TextSpan(
      text: widget.text,
      style: TextStyle(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();

    final containerWidth = textPainter.width + 24.0.w;
    final containerHeight = textPainter.height + 20.0.h;

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: containerWidth,
        height: containerHeight,
        padding: EdgeInsets.all(8.0).r,
        decoration: BoxDecoration(
          color: widget.selected ? Color(0xFFFE724C) : Colors.white,
          borderRadius: BorderRadius.circular(20.0).r,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16.0.sp,
              color: widget.selected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
