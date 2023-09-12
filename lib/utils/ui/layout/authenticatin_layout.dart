import 'package:choosicbox/config/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class AuthenticationLayout extends StatelessWidget {
  final Widget child;
  final Alignment? alignment;
  final bool isBackButton;

  const AuthenticationLayout({super.key, required this.child, this.alignment, required this.isBackButton, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: isBackButton ? AppBar(
        toolbarHeight: 100.h,
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
              child: SvgPath(
                svgPath: 'arrow_left',
              ),
            ),
          ),
        ),
      ): null,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Positioned(
              top: -35.h,
              left: -50.w,
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 30.w,
                  ),
                  borderRadius: BorderRadius.circular(150.w),
                ),
              ),
            ),
            Positioned(
              top: -120.h,
              left: 25.w,
              child: Container(
                height: 165.w,
                width: 165.h,
                decoration: BoxDecoration(
                  color: Color(0xFFFFECE7),
                  borderRadius: BorderRadius.circular(150.w),
                ),
              ),
            ),
            Positioned(
              top: -80.h,
              right: -60.w,
              child: Container(
                height: 181.h,
                width: 181.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(150.w),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.fromLTRB(27, 0, 27, 25).r,
                child: Align(
                  alignment: alignment ?? Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
