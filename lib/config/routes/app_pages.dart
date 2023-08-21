import 'package:choosicbox/screens/authentication/splash/View/splash_view.dart';
import 'package:get/get.dart';
import '../../screens/authentication/login/View/login_view.dart';
import '../../screens/authentication/register/View/login_view.dart';
import '../../screens/home/profile/View/profile_view.dart';
import '../../screens/navigation/bottom_navigation.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterView(),
    ),
    GetPage(
      name: Routes.APPFRAME,
      page: () => AppFrame(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePageView(),
    ),
  ];
}
