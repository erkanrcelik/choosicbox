import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSuggestionCard extends StatelessWidget {
  const SearchSuggestionCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(1, 5),
            blurRadius: 3,
            spreadRadius: 1,
          )
        ]
      ),
      padding: EdgeInsets.fromLTRB(15.w, 5.h, 15.w,5.h),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black.withOpacity(0.8))
      ),
    );
  }
}
