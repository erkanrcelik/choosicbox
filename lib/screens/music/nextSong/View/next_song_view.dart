import 'package:choosicbox/utils/ui/card/next_song_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NextSongView extends StatelessWidget {
  const NextSongView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100.h,
        elevation: 0,
        leadingWidth: 80.w,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 38.h,
              width: 38.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10).r,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Image.asset('assets/icons/back.png'),
            ),
          ),
        ),
        title: Text(
          'Oynatma Listesi',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
            fontFamily: 'Sofia Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Icon(
              Icons.search,
              size: 30.h,
              color: Colors.white,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.only(top: 100.h),
        child: NextSongCard(),
      ),
    );
  }
}
