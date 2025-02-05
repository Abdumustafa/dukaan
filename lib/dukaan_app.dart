import 'package:dukaan/core/routing/router.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class dukaan extends StatelessWidget {
  const dukaan({super.key});

  @override
  Widget build(BuildContext context) {
     return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp.router(
          routerConfig: routerApp,
          title: "dukaan",
          theme: ThemeData(
            primaryColor: ColorsManager.mainSeaGreen,
          ),
          debugShowCheckedModeBanner: false,
        ),
    );
     
     
     
     
     
   
  }
}
