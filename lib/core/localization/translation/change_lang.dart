import 'dart:ui';

import 'package:dukaan/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLange(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPrefrance.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String?  sharedPref=myServices.sharedPrefrance.getString("lang");
    if(sharedPref == "ar"){
      language = const Locale("ar");
    }else if(sharedPref == "en"){
      language = const Locale("en");
    }else{language =Locale (Get.deviceLocale!.languageCode);}
       
    
    super.onInit();
  }
}
