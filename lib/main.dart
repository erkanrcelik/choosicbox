import 'package:choosicbox/languages.dart';
import 'package:choosicbox/routes/app_pages.dart';
import 'package:choosicbox/temp/auth.dart';
import 'package:choosicbox/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main()  async {
  await Get.putAsync(() => AuthService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext c,child) => GetMaterialApp(
        // title for app
        title: "Choosicbox",
        // right upper corner flag remove
        debugShowCheckedModeBanner: false,
        // for animations
        defaultTransition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 230),
        // for route settings opaque route may remove
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        // under the routes file
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        // Theme Config -> add later switch
        themeMode: ThemeMode.system,
        theme: AppThemeConfig().lightTheme,
        darkTheme: AppThemeConfig().darkTheme,
        // Translations
        translations: Languages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('tr_TR'),
      ),
    );
  }
}