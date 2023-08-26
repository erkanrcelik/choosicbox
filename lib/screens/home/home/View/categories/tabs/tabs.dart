import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/ui/card/store_card.dart';
import '../../../../../../utils/ui/card/store_features_card.dart';

class CategoriesTabs extends StatelessWidget {
  const CategoriesTabs({super.key, required this.onTap, required this.imgList});

  final VoidCallback onTap;
  final List<Map<String, String>> imgList;



  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList.map((item) {
      return StoreCard(
        restaurant: item['image'] ?? '',
        businessName: item['storeName'] ?? '',
        cardTextList: const [
          StoreFeaturesCard(text: 'BURGER'),
          StoreFeaturesCard(text: 'CHICKEN'),
          StoreFeaturesCard(text: 'FAST FOOD'),
        ],
      );
    }).toList();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 27.w),
          child: Container(
            margin: EdgeInsets.only(right: 24.w),
            height: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'En Yakın Restoranlar',
                  style: TextStyle(
                      color: const Color(0xff323643),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: onTap,
                  child: Text('Tamamını Gör',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffFE724C))),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          margin: EdgeInsets.only(bottom: 0.w),
          height: 300.h,
          child: CarouselSlider(
            options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 0.7,
                aspectRatio: 500.0,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(milliseconds: 1500),
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800)),
            items: imageSliders,
          ),
        ),
      ],
    );
  }
}
