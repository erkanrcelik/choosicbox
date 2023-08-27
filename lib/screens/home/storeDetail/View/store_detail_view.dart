import 'package:choosicbox/screens/home/storeDetail/View/detailTab/about/View/store_detail_about.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/comment/View/store_detail_comment.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/musicConcept/View/store_detail_musicConcept.dart';
import 'package:choosicbox/screens/home/storeDetail/View/detailTab/photo/View/store_detail_photo.dart';
import 'package:choosicbox/utils/ui/button/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../appframe/app_frame.dart';

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
      StoreDetailAboutView(),
      StoreDetailCommentView(),
      StoreDetailMusicConceptView(),
      StoreDetailPhotoView(),
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          splashRadius: 0.00001,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppFrame()),
            );
          },
        ),
      ),
      extendBodyBehindAppBar: true,
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
          SizedBox(height: 600),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 459),
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
                                Text(
                                  'Myloks',
                                  style: TextStyle(
                                    color: Color(0xFF121212),
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.deepOrange,
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
                                SizedBox(
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
                                          Duration(milliseconds: 1000),
                                      valueLabelPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 1, horizontal: 8),
                                      valueLabelMargin:
                                          const EdgeInsets.only(right: 8),
                                      starOffColor: const Color(0xffe7e8ea),
                                      starColor: Colors.yellow,
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
                                decoration: BoxDecoration(
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
                                    Spacer(),
                                    TabbarButton(
                                      isOrange: pageIndex == 1 ? true : false,
                                      title: 'Müzik Konsepti',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 1;
                                        });
                                      },
                                    ),
                                    Spacer(),
                                    TabbarButton(
                                      isOrange: pageIndex == 2 ? true : false,
                                      title: 'Fotoğraflar',
                                      onTap: () {
                                        setState(() {
                                          pageIndex = 2;
                                        });
                                      },
                                    ),
                                    Spacer(),
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFE724C),
                  borderRadius: BorderRadius.circular(36),
                ),
                height: 48,
                child: Center(
                    child: Text(
                  'Müzik Çal',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )),
              ))
        ],
      ),
    );
  }
}
