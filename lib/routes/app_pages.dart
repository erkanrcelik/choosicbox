import 'package:choosicbox/routes/app_route_guard.dart';
import 'package:choosicbox/screens/home/category/View/category_view.dart';
import 'package:choosicbox/screens/home/home/View/home_view.dart';
import 'package:choosicbox/screens/authentication/register/password/View/register_password_view.dart';
import 'package:choosicbox/screens/authentication/register/personalInformation/View/personal_information_view.dart';
import 'package:choosicbox/screens/authentication/register/verifyMail/View/verify_mail_view.dart';
import 'package:choosicbox/screens/authentication/register/verifyPhone/View/verify_phone_view.dart';
import 'package:choosicbox/screens/authentication/resetPassword/View/reset_password_view.dart';
import 'package:choosicbox/screens/authentication/splash/View/splash_view.dart';
import 'package:choosicbox/screens/home/storeDetail/View/store_detail_view.dart';
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
      page: () => const ProfilePageView(),
      middlewares: [RouteGuard()]
    ),
    GetPage(
      name: Routes.REGISTER_VERIFY_PHONE,
      page: () => RegisterVerifyPhoneView(),
    ),
    GetPage(
      name: Routes.REGISTER_VERIFY_MAIL,
      page: () => RegisterVerifyMailView(),
    ),
    GetPage(
      name: Routes.REGISTER_PERSONAL_INFORMATION,
      page: () => RegisterPersonalInformationView(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => ResetPasswordView(),
    ),
    GetPage(
      name: Routes.REGISTER_PASSWORD,
      page: () => RegisterPasswordView(),
    ),
    GetPage(
      name: Routes.CATEGORY_DETAIL,
      page: () => CategoryView(),
    ),
    GetPage(
      name: Routes.STORE_DETAIL,
      page: () => StoreDetailView(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => CategoryView(),
    ),
  ];
}
