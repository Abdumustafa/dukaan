import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:dukaan/core/widget/category_grid_builder.dart';
import 'package:dukaan/core/widget/drawer_app/drower_app.dart';
import 'package:dukaan/feature/home/ui/widget/home_app_bare.dart';
import 'package:dukaan/feature/home/ui/widget/offers_section.dart';
import 'package:dukaan/feature/home/ui/widget/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: AppSearchTextFild(),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerApp(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          AutoScrollPageView(),
          SliverToBoxAdapter(child: OffersSection()),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 14.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyles.font18WhiteBold,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push("/CategoryScreen");
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: ColorsManager.mainSeaGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryListView(
              limit: 6,
            ),
          ),
          SliverToBoxAdapter(
            child: OffersSection(),
          ),
          SliverToBoxAdapter(child: verticalSpace(80.h)),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
