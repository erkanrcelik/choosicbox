import 'package:choosicbox/utils/ui/button/profile_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
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
                    blurRadius: 10, spreadRadius: 0,
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
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(), // Bu satır eklenmiştir
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 300),
                Container(
                  width: double.infinity,
                  height: 550.h,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 140.0),
                    child: Container(
                      child: const Text('asjsdkla'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 190.h,
            left: 27.w,
            right: 27.w,
            child: Container(
              height: 150.h,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffD3D1D8),
                    offset: Offset(2, 5), // X, Y offset
                    blurRadius: 10, spreadRadius: 0,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('asjsdkla'),
                  const Text('asjsdkla'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileTabbarButton(
                            title: 'Personal Info', onTap: () {}),
                        Container(
                          width: 1, // Çizgi kalınlığı
                          height: 30, // Çizgi yüksekliği
                          color: Colors.black, // Çizgi rengi
                        ),
                        ProfileTabbarButton(
                            title: 'Personal Info', onTap: () {}),
                        Container(
                          width: 1, // Çizgi kalınlığı
                          height: 30, // Çizgi yüksekliği
                          color: Colors.black, // Çizgi rengi
                        ),
                        ProfileTabbarButton(
                            title: 'Personal Info', onTap: () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 150.h,
            left: 27.w,
            right: 27.w,
            child: const CircleAvatar(
              radius: 52,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
