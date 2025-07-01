import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/widget/bottom_sheet_call_whatsapp.dart';
import 'package:dukaan/core/widget/app_bottom_navigation/navgation_items.dart';
import 'package:dukaan/feature/category/ui/screen/category_screen.dart';
import 'package:dukaan/feature/favorites/ui/screen/favorites_screen.dart';
import 'package:dukaan/feature/home/ui/screen/home_screen.dart';
import 'package:dukaan/feature/my_card/ui/screen/my_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  List<Widget> navgationItems = [
    NavgationItems(
      icon: Icons.home,
      title: "Home",
      onTap: () => Get.offAll(() => HomeScreen()),
    ),
    NavgationItems(
      icon: Icons.category,
      title: "category",
      onTap: () => Get.to(() => CategoryScreen()),
    ),
    SizedBox(
      height: 50.h,
      child: Center(
        child: NavgationItems(
          icon: Icons.child_care_outlined,
          title: "  Call  ",
        ),
      ),
    ),
    NavgationItems(
      icon: Icons.shopping_cart,
      title: "  Cart  ",
      onTap: () => Get.to(() => MyCartScreen()),
    ),
    NavgationItems(
      icon: Icons.favorite,
      title: "Favorite",
     
            onTap: () => Get.to(() => FavoritesScreen()),

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.black,
      color: ColorsManager.mainSeaGreen,
      height: 50.h,
      animationDuration: Duration(milliseconds: 300),
      items: navgationItems,
      onTap: (index) {
        if (index == 2) {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (_) => BottomSheetCallWhatsapp(),
          );
        }
      },
    );
  }
}
