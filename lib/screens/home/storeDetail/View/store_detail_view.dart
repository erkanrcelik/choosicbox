import 'package:choosicbox/screens/home/storeDetail/View/detailTab/about/View/store_detail_about.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/comment/View/store_detail_comment.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/musicConcept/View/store_detail_musicConcept.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/photo/View/store_detail_photo.dart';
import 'package:choosicbox/utils/ui/button/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


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
      const StoreDetailAboutView(),
      const StoreDetailMusicConceptView(),
      const StoreDetailPhotoView(),
      const StoreDetailCommentView(),
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
      appBar: AppBar(
        toolbarHeight: 50.h,
        elevation: 0,
        leadingWidth: 80.w,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffD3D1D8),
                    offset: Offset(2, 5), // X, Y offset
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset('assets/icons/back.png'),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/inside.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          const SizedBox(height: 600),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 459),
                Container(
                  width: double.infinity,
                  height: 550.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(27, 22, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Myloks',
                                  style: TextStyle(
                                    color: Color(0xFF121212),
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Raja Ampat, Papua Barat',
                                      style: TextStyle(
                                        color: Color(0xFF6F7789),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    RatingStars(
                                      value: value,
                                      onValueChanged: (v) {
                                        setState(() {
                                          value = v;
                                        });
                                      },
                                      starBuilder: (index, color) => Icon(
                                        Icons.star,
                                        color: color,
                                      ),
                                      starCount: 5,
                                      starSize: 20,
                                      valueLabelColor: const Color(0xff9b9b9b),
                                      valueLabelTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 12.0),
                                      valueLabelRadius: 10,
                                      maxValue: 5,
                                      starSpacing: 2,
                                      maxValueVisibility: true,
                                      valueLabelVisibility: true,
                                      animationDuration:
                                          const Duration(milliseconds: 1000),
                                      valueLabelPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 1, horizontal: 8),
                                      valueLabelMargin:
                                          const EdgeInsets.only(right: 8),
                                      starOffColor: const Color(0xffe7e8ea),
                                      starColor: Theme.of(context).colorScheme.primary,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(27.w, 27.h, 27.w, 0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    TabbarButton(
                                      isOrange: pageIndex == 0 ? true : false,
                                      title: 'Hakkında',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 0;
                                        });
                                      },
                                    ),
                                    const Spacer(),
                                    TabbarButton(
                                      isOrange: pageIndex == 1 ? true : false,
                                      title: 'Müzik Konsepti',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 1;
                                        });
                                      },
                                    ),
                                    const Spacer(),
                                    TabbarButton(
                                      isOrange: pageIndex == 2 ? true : false,
                                      title: 'Fotoğraflar',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 2;
                                        });
                                      },
                                    ),
                                    const Spacer(),
                                    TabbarButton(
                                      isOrange: pageIndex == 3 ? true : false,
                                      title: 'Yorumlar',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: buildPage()
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 30.h,
              left: 27.w,
              right: 27.w,
              child: InkWell(
                onTap: () {
                  Get.toNamed('/play-list');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  height: 48,
                  child: const Center(
                      child: Text(
                    'Müzik Çal',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )),
                ),
              ))
        ],
      ),
    );
  }
}
