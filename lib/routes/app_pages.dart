import 'package:choosicbox/routes/app_route_guard.dart';
import 'package:choosicbox/screens/home/category/View/category_view.dart';
import 'package:choosicbox/screens/authentication/register/personalInformation/View/personal_information_view.dart';
import 'package:choosicbox/screens/authentication/register/verifyMail/View/verify_mail_view.dart';
import 'package:choosicbox/screens/authentication/register/verifyPhone/View/verify_phone_view.dart';
import 'package:choosicbox/screens/authentication/resetPassword/View/reset_password_view.dart';
import 'package:choosicbox/screens/authentication/splash/View/splash_view.dart';
import 'package:choosicbox/screens/home/profile/Settings/View/Pages/AccountSettings/View/account_settings_view.dart';
import 'package:choosicbox/screens/home/profile/Settings/View/Pages/FeedBack/View/feed_back_view.dart';
import 'package:choosicbox/screens/home/storeDetail/View/store_detail_view.dart';
import 'package:choosicbox/screens/home/overview/View/overview_view.dart';
import 'package:choosicbox/screens/music/nextSong/View/next_song_view.dart';
import 'package:choosicbox/screens/music/playlist/View/playlist_view.dart';
import 'package:choosicbox/screens/notification/View/notification_view.dart';
import 'package:get/get.dart';
import '../../screens/appframe/app_frame.dart';
import '../../screens/authentication/login/View/login_view.dart';
import '../../screens/authentication/register/View/register_view.dart';
import '../../screens/home/profile/View/profile_view.dart';
import '../screens/home/profile/Settings/View/Pages/AccountSettings/CommunicationUpdates/View/communication_updates_view.dart';
import '../screens/home/profile/Settings/View/Pages/FaqSettings/View/faq_settings_view.dart';
import '../screens/home/profile/Settings/View/Pages/LanguageAppSettings/LanguageSettings/View/language_settings_view.dart';
import '../screens/home/profile/Settings/View/Pages/LanguageAppSettings/View/language_app_settings_view.dart';

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
    GetPage(
      name: Routes.PLAY_LIST,
      page: () => PlaylistView(),
    ),
    GetPage(
      name: Routes.NEXT_SONG,
      page: () => NextSongView(),
    ),
    GetPage(
      name: Routes.ACCOUNT_SETTINGS,
      page: () => AccountSettingsView(),
    ),
    GetPage(
      name: Routes.OVERVIEW,
      page: () => OverViewView(),
    ),
    GetPage(
      name: Routes.COMMUNICATION_UPDATES,
      page: () => CommunicationUpdatesView(),
    ),
    GetPage(
      name: Routes.LANGUAGE_APP_SETTINGS,
      page: () => LanguageAppSettingsView(),
    ),
    GetPage(
      name: Routes.LANGUAGE_SETTINGS,
      page: () => LanguageSettingsView(),
    ),
    GetPage(
      name: Routes.FAQ_SETTINGS,
      page: () => FaqSettingsView(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => NotificationView(),
    ),
    GetPage(
      name: Routes.FEED_BACK,
      page: () => FeedBackView(),
    ),
  ];
}
