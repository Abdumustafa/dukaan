import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/localization/translation/translation_screen.dart';
import 'package:dukaan/core/widget/drawer_app/build_drawer_item.dart';
import 'package:dukaan/feature/favorites/ui/screen/favorites_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    super.key,
  });

  signOut() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: Image.asset(
            "assets/images/logo.jpg",
          ),
        ),
        verticalSpace(50.h),
        BuildDrawerItem(
          icon: Icons.history,
          title: "Activity History",
          onTap: () {},
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.favorite,
          title: "Favourites",
          onTap: () => Get.to(FavoritesScreen()),
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.settings,
          title: "Account Settings",
          onTap: () {},
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.translate,
          title: "Language",
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("1".tr),
                content: TranslationScreen(),
              ),
            );
          },
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.language,
          title: "Country ",
          onTap: () {},
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.help,
          title: "Helpe",
          onTap: () {},
          color: Colors.black,
        ),
        const Spacer(),
        BuildDrawerItem(
          icon: Icons.logout,
          title: "Log Out",
          onTap: (() => signOut()),
          color: Colors.redAccent,
        ),
        verticalSpace(20),
      ],
    );
  }
}
