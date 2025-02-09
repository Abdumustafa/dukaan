import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/widget/drawer_app/build_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    super.key,
  });

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
          onTap: () {},
          color: Colors.black,
        ),
        BuildDrawerItem(
          icon: Icons.settings,
          title: "Account Settings",
          onTap: () {},
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
          onTap: () {},
          color: Colors.redAccent,
        ),
        verticalSpace(20),
      ],
    );
  }
}
