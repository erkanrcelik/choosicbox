import 'package:choosicbox/routes/app_pages.dart';
import 'package:choosicbox/temp/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RouteGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();
  @override
  RouteSettings? redirect(String? route) {
    return authService.isPremium.value ? null:const RouteSettings(name:Routes.LOGIN);
  }
}
