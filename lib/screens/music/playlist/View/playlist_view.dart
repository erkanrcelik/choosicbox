import 'package:choosicbox/config/path/svg_path.dart';
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
        elevation: 0,
        leadingWidth: 80.w,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPath(svgPath: 'arrow_left',color: Colors.white,width: 40.w,height: 40.h,),
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
                height: 200.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180.r),
                    bottomRight: Radius.circular(180.r),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110.h,
              left: (MediaQuery.of(context).size.width - 200.w) / 2,
              child: Container(
                height: 150.h,
                padding: EdgeInsets.all(10.w),
                width: 200.w,
                child: Image.network('https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg',fit: BoxFit.cover),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(18.0).r,
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
              top: 270.h,
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
                            borderRadius: BorderRadius.circular(15).r,
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
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                SizedBox(width: 10.w),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 20.h,
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w,bottom: 15.h,top: 10.h),
                      height: 500.h,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Şarkı Ara...',
                                  prefixIcon: Icon(Icons.search),
                                  border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                ),
                                // Arama işlemini burada yapabilirsiniz
                                onChanged: (value) {
                                  // Arama işlemini burada gerçekleştirin
                                  // value, kullanıcının girdiği metni içerir
                                },
                              ),
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
                                onTap: (){}
                            ),
                            PlayListCard(
                                name: 'Firuze',
                                category: 'Sezen Aksu',
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
