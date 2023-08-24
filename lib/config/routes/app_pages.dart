import 'package:choosicbox/screens/authentication/resetPassword/View/reset_password_view.dart';
import 'package:choosicbox/screens/authentication/splash/View/splash_view.dart';
import 'package:choosicbox/screens/authentication/verifyMail/View/verify_mail_view.dart';
import 'package:get/get.dart';

import '../../screens/appframe/app_frame.dart';
import '../../screens/authentication/login/View/login_view.dart';
import '../../screens/authentication/register/View/register_view.dart';
import '../../screens/home/profile/View/profile_view.dart';

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
    GetPage(
      name: Routes.VERIFY_PHONE,
      page: () => VerifyPhoneView(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => ResetPasswordView(),
    ),
  ];
}
