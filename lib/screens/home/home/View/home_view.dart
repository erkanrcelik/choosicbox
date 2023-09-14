import 'package:carousel_slider/carousel_slider.dart';
import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/screens/home/home/View/categories/tabs/tabs.dart';
import 'package:choosicbox/screens/home/home/View/drawer/drawer.dart';
import 'package:choosicbox/utils/ui/card/popular_store_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/ui/button/music_type.dart';
import '../../../../utils/ui/card/store_features_card.dart';
import '../../../appframe/app_frame_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _advancedDrawerController = AdvancedDrawerController();
  int pageIndex = 0;

  AppFrameController _controller = AppFrameController();

  @override
  void initState() {
    super.initState();
    _controller.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> alcoholCategoriesList = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'alcoholCategoriesList1', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'alcoholCategoriesList2', // İkinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'alcoholCategoriesList3', // İkinci işletme adı
      },
    ];
    final List<Map<String, String>> coffeeCategoriesList = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'coffeeCategoriesList1', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'coffeeCategoriesList2', // İkinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'coffeeCategoriesList3', // İkinci işletme adı
      },
    ];
    final List<Map<String, String>> gymCategoriesList = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'gymCategoriesList', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'gymCategoriesList', // İkinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'gymCategoriesList', // İkinci işletme adı
      },
    ];
    final List<Map<String, String>> pubCategoriesList = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'pubCategoriesList1', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'pubCategoriesList2', // İkinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'pubCategoriesList3', // İkinci işletme adı
      },
    ];
    final List<Map<String, String>> restaurantCategoriesList = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'restaurantCategoriesList1', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'restaurantCategoriesList2', // İkinci işletme adı
      },
      {
        'image': 'restaurant', // İkinci restoran adı
        'storeName': 'restaurantCategoriesList', // İkinci işletme adı
      },
    ];
    final List<Map<String, String>> popularStoreCard = [
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'popular1', // Birinci işletme adı
        'description': 'popular1', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'popular2', // Birinci işletme adı
        'description': 'popular2', // Birinci işletme adı
      },
      {
        'image': 'restaurant', // Birinci restoran adı
        'storeName': 'popular3', // Birinci işletme adı
        'description': 'popular3', // Birinci işletme adı
      },
    ];

    Widget buildPage() {
      final categoriesList = [
        coffeeCategoriesList,
        pubCategoriesList,
        restaurantCategoriesList,
        alcoholCategoriesList,
        gymCategoriesList,
      ];

      if (pageIndex >= 0 && pageIndex < categoriesList.length) {
        return KeyedSubtree(
          key: ValueKey<int>(pageIndex),
          child: CategoriesTabs(
            onTap: () {
              Get.toNamed('/category');
            },
            onTapCard: 'store-detail',
            imgList: categoriesList[pageIndex],
          ),
        );
      } else {
        return const Text('error');
      }
    }

    final List<Widget> imageSliders = popularStoreCard.map(
          (item) {
        return PopularStoreCard(
          image: item['image'] ?? '',
          businessName: item['image'] ?? '',
          cardTextList: [
            StoreFeaturesCard(text: 'Klasik Müzik'),
            SizedBox(width: 10.w),
            StoreFeaturesCard(text: 'Arabesk'),
          ],);
      },
    ).toList();
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return AdvancedDrawer(
      openScale: 0.80,
      openRatio: 0.50,
      backdrop: SizedBox(
        width: MediaQuery
            .sizeOf(context)
            .width,
        height: MediaQuery
            .sizeOf(context)
            .height,
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffE9EDF2), offset: Offset(0, 15), // X, Y offset
            blurRadius: 30, spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.all(const Radius.circular(16).r),
      ),
      drawer: DrawerPage(screenWidth: MediaQuery
          .sizeOf(context)
          .width),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    size: 30.h,
                    value.visible ? Icons.menu : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Get.toNamed('/notification');
                },
                child: SvgPath(
                  svgPath: "notification",
                  width: 30.w,
                  height: 30.h,
                )),
            const SizedBox(width: 20)
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPath(
                svgPath: "map_pin",
              ),
              SizedBox(width: 10.w),
              Text('Şu an ki konumunuz',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium),
              SvgPath(svgPath: 'arrow_down')
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 27.w),
                child: Container(
                  margin: EdgeInsets.only(top: 19.h, bottom: 0.h),
                  height: 56.h,
                  width: screenWidth,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _controller.changeTabIndex(1);
                        print(_controller.tabIndex.value);
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 53.h,
                          width: screenWidth * 0.70,
                          padding: EdgeInsets.only(
                              top: 15.h, bottom: 15.h, right: 9.w, left: 18.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(10)
                                .r,
                            color: const Color(0xffFCFCFD),
                            border: Border.all(
                                width: 1.w, color: const Color(0xffEFEFEF)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPath(svgPath: 'search'),
                              SizedBox(width: 14.w),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Ara',
                                    contentPadding: EdgeInsets.zero,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 18.w),
                        Container(
                          height: 50.h,
                          width: 50.w,
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(14)
                                .r,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffE9EDF2),
                                offset: Offset(0, 15),
                                // X, Y offset
                                blurRadius: 30,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: SvgPath(
                            svgPath: "filter_settings",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MusicTypeItem(
                          isPurple: pageIndex == 0 ? true : false,
                          icon: SvgPath(
                            svgPath: "coffee",
                          ),
                          text: 'Cafe',
                          onTap: () {
                            setState(() {
                              pageIndex = 0;
                            });
                          },
                        ),
                        MusicTypeItem(
                          isPurple: pageIndex == 1 ? true : false,
                          icon: SvgPath(svgPath: "club"),
                          text: 'Bar',
                          onTap: () {
                            setState(() {
                              pageIndex = 1;
                            });
                          },
                        ),
                        MusicTypeItem(
                          isPurple: pageIndex == 2 ? true : false,
                          icon: SvgPath(svgPath: "restaurant"),
                          text: 'Restorant',
                          onTap: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          },
                        ),
                        MusicTypeItem(
                          isPurple: pageIndex == 3 ? true : false,
                          icon: SvgPath(svgPath: "alcohol"),
                          text: 'Alkollü',
                          onTap: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                        ),
                        MusicTypeItem(
                          isPurple: pageIndex == 4 ? true : false,
                          icon: SvgPath(svgPath: "gym"),
                          text: 'Gym',
                          onTap: () {
                            setState(() {
                              pageIndex = 4;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: buildPage(), // buildPage fonksiyonunu çağırın
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 27.w),
                child: Container(
                  margin: EdgeInsets.only(right: 24.w),
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popüler Mekanlar',
                        style: TextStyle(
                            color: const Color(0xff323643),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Tamamını Gör',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Theme
                              .of(context)
                              .colorScheme
                              .primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: CarouselSlider(
                  disableGesture: true,
                  options: CarouselOptions(
                    padEnds: false,
                    viewportFraction: 0.7,
                    aspectRatio: 500.0,
                    height: 360.h,
                    disableCenter: true,
                    enableInfiniteScroll: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(milliseconds: 1500),
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                  ),
                  items: imageSliders,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
