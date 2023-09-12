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
      'welcome_text':'E-posta ve telefonla başlayın',
      'register':'Üye Ol',
      'or':'veya',
      'have_account':'Zaten bir hesabın var mı?',
      'continue':'Devam',
      'phone':'Telefon Numarası',
      'register_text1':'Cep telefonu numaranı ve e-posta adresini girerek devam et',
      'register_information_text1':'Kişisel Verilerin Korunması Hakkında Aydınlatma Metni',
      'register_text2':'için tıklayın',
      'checkobx_text1':'\' ni onaylıyorum ve ',
      'checkobx_text2':' kapsamında kişisel verilerimin işlenmesine ve paylaşılmasına onay veriyorum.',
      'checkobx_information_text_2':'Üyelik Sözleşmesi',
      'checkobx_information_text_3':'Açık Rıza Metni',
      'checkobx_text3':'Choosicbox indirim ve kampanyalardan anında haberdar olmak için ',
      'checkobx_information_text_4':'Choosicbox Anonim A. Ş. Ticari İletişim İzni Metni',
      'checkobx_text4':' kapsamında iletişim izni veriyorum.',
    }
  };
}