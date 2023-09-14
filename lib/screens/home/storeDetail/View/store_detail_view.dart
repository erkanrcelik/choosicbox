import 'package:choosicbox/screens/home/storeDetail/View/detailTab/about/View/store_detail_about.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/comment/View/store_detail_comment.dart';
import 'package:choosicbox/utils/ui/button/profile_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/path/svg_path.dart';
import 'detailTab/activities/dart/store_detail_activities.dart';

class StoreDetailView extends StatefulWidget {
  const StoreDetailView({super.key});

  @override
  State<StoreDetailView> createState() => _StoreDetailViewState();
}

class _StoreDetailViewState extends State<StoreDetailView> {
  double value = 3.5;
  int pageIndex = 0;

  Widget buildPage() {
    final categoriesList = [
      StoreDetailActivitiesView(),
      StoreDetailAboutView(),
      StoreDetailCommentView(),
    ];

    if (pageIndex >= 0 && pageIndex < categoriesList.length) {
      return KeyedSubtree(
        key: ValueKey<int>(pageIndex),
        child: categoriesList[pageIndex],
      );
    } else {
      return const Text('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary
                ],
                // Gradient renkleri
                begin: Alignment.topLeft,
                // Başlangıç pozisyonu
                transform: GradientRotation(0.004),
                end: Alignment.topRight,
                // Bitiş pozisyonu
                stops: [0.0, 0.5, 1.0], // Renk geçişlerinin pozisyonları
              ),
            ),
            width: MediaQuery.of(context).size.width.w,
            height: MediaQuery.of(context).size.height.h,
          ),
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 130.h),
                Container(
                  width: MediaQuery.of(context).size.width.w,
                  height: 700.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18).r,
                        topRight: Radius.circular(18).r,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 120.0.h),
                    child: SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        child: buildPage(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 70.h,
            left: 10.w,
            right: 10.w,
            child: Container(
              height: 160.h,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffD3D1D8),
                    offset: Offset(2, 5), // X, Y offset
                    blurRadius: 10, spreadRadius: 0,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10).r,
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    top: 15.h,
                    left: 20.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:50.0.w,right: 20.w,top: 13.h),
                                child: Text(
                                  'Mylos Meyhane',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              Padding(
                                padding: EdgeInsets.only(left:15.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPath(svgPath: 'map_location'),
                                    SizedBox(width: 5.w,),
                                    Text(
                                      'Atatürk Caddesi Koşuyolu...',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                              color: Colors.black
                                                  .withOpacity(0.8)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:20.0.w,top: 10.h),
                            child: CircleAvatar(
                              radius: 35.r,
                              backgroundImage:
                                  AssetImage('assets/images/restaurant.png'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFEEEEEE),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0.w, right: 30.0.w),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ProfileTabbarButton(
                                  isClicked: pageIndex == 0 ? true : false,
                                  title: 'Aktiviteler',
                                  onTap: () {
                                    setState(() {
                                      pageIndex = 0;
                                    });
                                  },
                                ),
                                Container(
                                  width: 1.w,
                                  height: 55.h,
                                  color: Color(0xFFEEEEEE),
                                ),
                                ProfileTabbarButton(
                                  isClicked: pageIndex == 1 ? true : false,
                                  title: 'Hakkında',
                                  onTap: () {
                                    setState(() {
                                      pageIndex = 1;
                                    });
                                  },
                                ),

                                /*ProfileTabbarButton(
                                  isClicked: pageIndex == 2 ? true : false,
                                  title: 'Yorumlar',
                                  onTap: () {
                                    setState(() {
                                      pageIndex = 2;
                                    });
                                  },
                                ),*/
                                //Mekan yorum alanı şu anlık kaldırılmalıdır.
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 10.w,
            right: 10.w,
            child: InkWell(
              onTap: () {
                Get.toNamed('play-list');
              },
              child: Container(
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(18).r,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffD3D1D8),
                      offset: Offset(2, 5), // X, Y offset
                      blurRadius: 10, spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(child: Text('Müzik Çal', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
