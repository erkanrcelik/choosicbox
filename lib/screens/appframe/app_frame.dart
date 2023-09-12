import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/screens/home/profile/View/profile_view.dart';
import 'package:choosicbox/screens/home/search/View/search_view.dart';
import 'package:choosicbox/screens/notification/View/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';
import '../home/home/View/home_view.dart';
import 'app_frame_controller.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({super.key});

  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
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

  final List<Widget> _pages = [
    HomeView(key: PageStorageKey('home')),
    SearchView(
      key: PageStorageKey('search'),
    ),
    HomeView(key: PageStorageKey('home')),
    ProfilePageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 60.w,
        height: 60.h,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Get.toNamed('/overview');
            },
            child: SvgPath(
              svgPath: 'logo',
              color: Theme.of(context).colorScheme.primary,
              width: 25.w,
              height: 25.h,
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0).r,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        child: Container(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    focusElevation: 0,
                    focusColor: Colors.white,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _controller.changeTabIndex(0);
                      });
                    },
                    child: SvgPicture.asset(
                      Assets.iconsHome,
                      width: 35.w,
                      height: 35.h,
                      color: _controller.tabIndex == 0
                          ? Theme.of(context).colorScheme.primary
                          : Color(0xFFCECECE),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      focusElevation: 0,
                      focusColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _controller.changeTabIndex(1);
                        });
                      },
                      child: SvgPicture.asset(
                        Assets.iconsSearch,
                        width: 35.w,
                        height: 35.h,
                        color: _controller.tabIndex == 1
                            ? Theme.of(context).colorScheme.primary
                            : Color(0xFFCECECE),
                      )),
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    focusElevation: 0,
                    focusColor: Colors.white,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _controller.changeTabIndex(2);
                      });
                    },
                    child: SvgPicture.asset(
                      Assets.iconsMapLocation,
                      width: 35.w,
                      height: 35.h,
                      color: _controller.tabIndex == 2
                          ? Theme.of(context).colorScheme.primary
                          : Color(0xFFCECECE),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    focusElevation: 0,
                    focusColor: Colors.white,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _controller.changeTabIndex(3);
                      });
                    },
                    child: SvgPicture.asset(
                      Assets.iconsProfile,
                      width: 35.w,
                      height: 35.h,
                      color: _controller.tabIndex == 3
                          ? Theme.of(context).colorScheme.primary
                          : Color(0xFFCECECE),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: _pages[_controller.tabIndex.value],
    );
  }
}
