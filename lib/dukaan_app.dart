import 'package:dukaan/core/localization/translation/change_lang.dart';
import 'package:dukaan/core/localization/translation/translation.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/feature/Authantication/ui/screen/wapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DukaanApp extends StatelessWidget {
  DukaanApp({super.key});
  final LocaleController controller = Get.put(LocaleController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
        locale: controller.language,
        translations: MyTranslation(),
        title: "dukaan",
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          primaryColor: ColorsManager.mainSeaGreen,
        ),
        debugShowCheckedModeBanner: false,
        home: Wapper(),
      ),
    );
  }
}
