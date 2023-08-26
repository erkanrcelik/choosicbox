import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/ui/card/category_store_card.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0.h,
          right: 0.w,
          child: Image.asset(
            'assets/images/pizzaTopScreen.png',
            height: 290.h,
          ),
        ),
        Positioned(
          top: 37.h,
          left: 27.w,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 38.w,
              width: 38.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10).r,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffD3D1D8),
                    offset: Offset(5.h, 10.w),
                    // X, Y offset
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset('assets/icons/back.png'),
            ),
          ),
        ),
        Positioned(
          top: 110.h,
          left: 26.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fast',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff272D2F),
                ),
              ),
              Text(
                'Food',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffFE724C),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 270.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Container(
                  height: 20.h,
                  padding: const EdgeInsets.only(right: 10).w,
                  child: Row(
                    children: [
                      Text(
                        'Short by:',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(children: [
                          Text('Popular',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFE724C))),
                          SizedBox(
                        width: 5.w,
                          ),
                          Image.asset('assets/icons/arrowDown.png'),
                        ]),
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/buttons/filter.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 442.h,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.w),
                    child: const Column(
                      children: [
                        CategoryStoreCard(
                            businessName: 'Chicken Hawaiian',
                            description: 'Chicken, Cheese and pineapple',
                            image: 'restaurant'),
                        CategoryStoreCard(
                            businessName: 'Chicken Hawaiian',
                            description: 'Chicken, Cheese and pineapple',
                            image: 'restaurant'),
                        CategoryStoreCard(
                            businessName: 'Chicken Hawaiian',
                            description: 'Chicken, Cheexse and pineapple',
                            image: 'restaurant'),
                        CategoryStoreCard(
                            businessName: 'Chicken Hawaiian',
                            description: 'Chicken, Cheese and pineapple',
                            image: 'restaurant'),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
