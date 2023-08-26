import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'welcome': 'Welcome',
      'deliver_to':'Deliver To'
    },
    'tr_TR':{
      'welcome':'Hoş Geldiniz',
      'login':'Giriş Yap',
      'email':'E-Posta',
      'password':'Şifre',
      'password_again':'Şifre Tekrar',
      'forgot_password':'Şifreni mi unuttun?',
      'dont_have_account':'Hesabın yok mu?',
      'register':'Kayıt Ol',
      'or':'veya',
      'have_account':'Zaten bir hesabın var mı?',
      'continue':'Devam',
    }
  };


}