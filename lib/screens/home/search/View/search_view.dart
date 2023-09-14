import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/utils/ui/card/search_suggestion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/ui/card/filter_category_card.dart';
import '../../../../utils/ui/card/search_card.dart';
import '../../../../utils/ui/widget/range_slider.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late bool statusType = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ara',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: 30.sp,
                fontFamily: 'Sofia Pro',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
              child: Container(
                margin: EdgeInsets.only(top: 19.h, bottom: 0.h),
                height: 56.h,
                width: screenWidth,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      statusType = !statusType;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 53.h,
                        width: screenWidth * 0.55,
                        padding: EdgeInsets.only(
                          top: 15.h,
                          bottom: 15.h,
                          right: 9.w,
                          left: 18.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          color: const Color(0xffFCFCFD),
                          border: Border.all(
                            width: 1.w,
                            color: const Color(0xffEFEFEF),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: const Color(0xffB1B1B1),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          _showFilterBottomSheet(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14).r,
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffE9EDF2),
                                offset: Offset(0, 15),
                                blurRadius: 30,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: SvgPath(
                            svgPath: 'filter',
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed('notification');
                        },
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14).r,
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffE9EDF2),
                                offset: Offset(0, 15),
                                blurRadius: 30,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: SvgPath(
                            svgPath: 'notification'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            statusType ?
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
                        child: Text('Mekan Kategorileri'),
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                        thickness: 1,
                      ),
                      SizedBox(height: 10.h,),
                      Padding(
                        padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
                        child: Wrap(
                          runSpacing: 15.h,
                          spacing: 30.w,
                          children: [
                            SearchSuggestionCard(title: 'Alkollü',),
                            SearchSuggestionCard(title: 'Kahve',),
                            SearchSuggestionCard(title: 'Restorant',),
                            SearchSuggestionCard(title: 'Gym',),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
                        child: Text('Müzik Kategorileri'),
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                        thickness: 1,
                      ),
                      SizedBox(height: 10.h,),
                      Padding(
                        padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
                        child: Wrap(
                          runSpacing: 15.h,
                          spacing: 30.w,
                          children: [
                            SearchSuggestionCard(title: 'Arabesk',),
                            SearchSuggestionCard(title: 'Hip-Hop',),
                            SearchSuggestionCard(title: 'Tr POP',),
                            SearchSuggestionCard(title: 'Yabancı Pop',),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                :
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(27.w, 0.h, 27.w, 0.h),
                    child: Column(
                      children: [
                        const SearchCard(
                          imagePath: 'https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg',
                          name: 'Restoran Adı',
                          category: 'Kategori',
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    showDragHandle: true,
    enableDrag: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0).r,
        topRight: Radius.circular(15.0).r,
      ),
    ),
    builder: (BuildContext context) {
      return FractionallySizedBox(
        heightFactor: 0.6.h,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(27).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Filtre',
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0.h),
                    Text(
                      'Kategori',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0.h),
                    Wrap(
                      spacing: 15.0,
                      runSpacing: 15.0,
                      children: <Widget>[
                        FilterCategoryCard(
                          text: 'Alkollü Mekanlar',
                          selected: true,
                          onTap: () {
                          },
                        ),
                        FilterCategoryCard(
                          text: 'Gym',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Cafeler',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Bar & Pub',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Kahve',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Restorant',
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0.h),
                    Text(
                      'Müzik Konsepti',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0.h),
                    Wrap(
                      spacing: 15.0,
                      runSpacing: 15.0,
                      children: <Widget>[
                        FilterCategoryCard(
                          text: 'Arabesk',
                          selected: true,
                          onTap: () {
                          },
                        ),
                        FilterCategoryCard(
                          text: 'Pop',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Rap',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'HipHop',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Slow',
                          onTap: () {},
                        ),
                        FilterCategoryCard(
                          text: 'Klasik Müzik',
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    RangeSliderItem(
                      title: 'Fiyat Aralığı',
                      initialMinValue: 20,
                      initialMaxValue: 80,
                      onMinValueChanged: (v) {},
                      onMaxValueChanged: (v) {},
                    ),
                    SizedBox(height: 10.0.h),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0).r,
                        color:Theme.of(context).colorScheme.primary,
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Center(
                          child: Text(
                            'Filtreleri Uygula',
                            style: TextStyle(color: Colors.white,fontSize: 16.0.sp,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Center(
                          child: Text(
                            'Filtreleri Sıfırla',
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16.0.sp,fontWeight: FontWeight.bold),
                          )
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      );
    },
  );
}
