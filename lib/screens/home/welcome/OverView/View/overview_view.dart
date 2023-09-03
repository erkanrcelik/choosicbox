import 'package:carousel_slider/carousel_slider.dart';
import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/utils/ui/card/close_location_mini_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/ui/card/close_location_card.dart';

class OverViewView extends StatelessWidget {
  const OverViewView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                        height: 1000.0,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30.w,
              ),
              SvgPath(
                svgPath: 'choosicbox_logo',
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Choosicbox',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.apply(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed('/index');
                    },
                    child: Text(
                      'Atla',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.apply(color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15.0.w,15.0.h,15.0.w,0.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CarouselSlider(
                  disableGesture: true,
                  options: CarouselOptions(
                    padEnds: false,
                    viewportFraction: 1,
                    aspectRatio: 500.0,
                    height: 200.h,
                    disableCenter: true,
                    enableInfiniteScroll: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(milliseconds: 1500),
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                  items: imageSliders,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Şu an burada mısınız?',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CloseLocationCard(
                  onTap: () {
                    Get.toNamed('/store-detail');
                  },
                  location: '30m',
                  businessName: 'Mylos Meyhane',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yakındaki mekanlar?',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CloseLocationMiniCard(
                        location: 'asdasd',
                        businessName: 'adjıasdaksd',
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Expanded(
                      child: CloseLocationMiniCard(
                        location: 'asdasd',
                        businessName: 'adjıasdaksd',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CloseLocationMiniCard(
                        location: 'asdasd',
                        businessName: 'adjıasdaksd',
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Expanded(
                      child: CloseLocationMiniCard(
                        location: 'asdasd',
                        businessName: 'adjıasdaksd',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
