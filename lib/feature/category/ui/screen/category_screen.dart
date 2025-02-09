import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:dukaan/core/widget/category_grid_builder.dart';
import 'package:dukaan/feature/home/ui/widget/home_app_bare.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyles.font18WhiteBold,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(
                bottom: 8.h, left: 16.w, right: 16.w, top: 8.0.h),
            child: AppSearchTextFild(),
          )),
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
