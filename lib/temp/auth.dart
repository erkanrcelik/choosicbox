import 'package:get/get.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async => this;

  final RxBool isPremium = true.obs;

  void setIsPremium(bool newValue) {
    isPremium.value = newValue;
  }
}