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
      'deliver_to':'Transfer'
    }

  };


}