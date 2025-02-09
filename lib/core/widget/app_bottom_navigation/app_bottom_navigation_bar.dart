import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/widget/bottom_sheet_call_whatsapp.dart';
import 'package:dukaan/core/widget/app_bottom_navigation/navgation_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
      onTap: (context) => context.go("/HomeScreen"),
    ),
    NavgationItems(
      icon: Icons.category,
      title: "category",
      onTap: (context) => context.push("/CategoryScreen"),
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
      onTap: (context) => context.push(
        "/MyCartScreen",
      ),
    ),
    NavgationItems(
      icon: Icons.favorite,
      title: "Favorite",
      onTap: (context) => context.push(
        "/FavoritesScreen",
      ),
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
