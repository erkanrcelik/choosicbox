import 'package:choosicbox/screens/home/category/View/category_view.dart';
import 'package:choosicbox/screens/home/profile/View/profile_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home/home/View/home_view.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({super.key});

  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _page = 1;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    const CategoryView(),
    HomeView(),
    const ProfilePageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 60.0.h,
        items: [
          Icon(Icons.search, size: 30.h),
          Icon(Icons.home, size: 30.h),
          Icon(Icons.person, size: 30.h),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: const Color(0xFFff7f00),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _pages[_page],
    );
  }
}