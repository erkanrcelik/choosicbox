import 'package:choosicbox/screens/home/profile/Activites/View/activites_view.dart';
import 'package:choosicbox/screens/home/profile/Information/View/information_view.dart';
import 'package:choosicbox/screens/home/profile/Settings/View/settings_view.dart';
import 'package:choosicbox/utils/ui/button/profile_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  double value = 3.5;
  int pageIndex = 0;

  Widget buildPage() {
    final categoriesList = [
      const InformationView(),
      // const ActivitiesView(),
      const SettingsView(),
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add_outlined,color: Colors.white,), // Bildirim ikonu
            onPressed: () {
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary], // Gradient renkleri
                  begin: Alignment.topLeft, // Başlangıç pozisyonu
                  transform: GradientRotation(0.004),
                  end: Alignment.topRight, // Bitiş pozisyonu
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
                SizedBox(height: 252.h),
                Container(
                  width: MediaQuery.of(context).size.width.w,
                  height: 500.h,
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
                    padding: EdgeInsets.only(top: 110.0.h),
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
            top: 150.h,
            left: 20.w,
            right: 20.w,
            child: Container(
              height: 180.h,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('erkanrcelik',style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: 20.h,),
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
                      padding: EdgeInsets.only(left: 15.0.w,right: 30.0.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          ProfileTabbarButton(
                            isClicked: pageIndex == 0 ? true : false,
                            title: 'Kullanıcı Bilgileri',
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
                          /*ProfileTabbarButton(
                            isClicked: pageIndex == 1 ? true : false,
                            title: 'Faliyetler',
                            onTap: () {
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                          ),
                          Container(
                            width: 1.w,
                            height: 55.h,
                            color: Color(0xFFEEEEEE),
                          ),*/
                          ProfileTabbarButton(
                            isClicked: pageIndex == 1 ? true : false,
                            title: 'Ayarlar',
                            onTap: () {
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 85.h,
            left: MediaQuery.of(context).size.width.w / 2.w - 52.r,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 52.r,
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2.w,
                            blurRadius: 3.w,
                            offset: Offset(0.w, 2.h),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
