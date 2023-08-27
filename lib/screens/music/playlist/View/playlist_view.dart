import 'package:choosicbox/utils/ui/card/play_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({Key? key});

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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0.h,
              left: 0.w,
              child: Container(
                height: 360.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffff6e06),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180.r),
                    bottomRight: Radius.circular(180.r),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150.h,
              left: (MediaQuery.of(context).size.width - 180.w) / 2,
              child: Container(
                height: 230.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Color(0xffff6e06),
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 410.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Mylos',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: Colors.black,
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 30.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFE724C),
                            borderRadius: BorderRadius.circular(15).r,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(211, 209, 216, 0.5),
                                offset: Offset(0, 0),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed('/next-song');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sıradaki Şarkılar',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:20.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.grey.shade400),
                        )
                      ),
                      padding: EdgeInsets.only(left: 5.w, right: 5.w,bottom: 15.h,top: 10.h),
                      height: 350.h,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            PlayListCard(
                                imagePath: 'assets/images/restaurant.png',
                                name: 'name',
                                category: 'category',
                                onTap: (){}
                            ),
                            PlayListCard(
                                imagePath: 'assets/images/restaurant.png',
                                name: 'name',
                                category: 'category',
                                onTap: (){}
                            ),
                            PlayListCard(
                                imagePath: 'assets/images/restaurant.png',
                                name: 'name',
                                category: 'category',
                                onTap: (){}
                            ),
                            PlayListCard(
                                imagePath: 'assets/images/restaurant.png',
                                name: 'name',
                                category: 'category',
                                onTap: (){}
                            ),
                            PlayListCard(
                                imagePath: 'assets/images/restaurant.png',
                                name: 'name',
                                category: 'category',
                                onTap: (){}
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
