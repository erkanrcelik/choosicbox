import 'package:choosicbox/screens/authentication/login/View/login.dart';
import 'package:choosicbox/screens/authentication/register/View/register.dart';
import 'package:choosicbox/screens/authentication/welcome/View/welcome_screen.dart';
import 'package:get/get.dart';

import '../../screens/home/profile/View/profile_view.dart';
import '../../screens/navigation/bottom_navigation.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: Routes.APPFRAME,
      page: () => AppFrame(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePageView(),
    ),
  ];
}