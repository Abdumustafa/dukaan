import 'package:dukaan/feature/home/ui/widget/category_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key, this.limit});
  final int? limit;

  final List categories = [
    {
      'title': 'Deals',
      'image': 'assets/images/image_page_view_one.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Grocery',
      'image': 'assets/images/image_page_view_two.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Breakfast',
      'image': 'assets/images/image_page_view_three.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Dairy',
      'image': 'assets/images/image_page_view_four.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Snacks',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Bakery',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Cold Drinks',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Meat & Poultry Sea Food',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Vegetables & Fruits',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Hot Drinks',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Frozen',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Cleaning',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Meat & Poultry Sea Food',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Vegetables & Fruits',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Hot Drinks',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Frozen',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Cleaning',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Meat & Poultry Sea Food',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Vegetables & Fruits',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Hot Drinks',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Frozen',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
    {
      'title': 'Cleaning',
      'image': 'assets/images/image_page_view_five.jpeg',
      "onTap": (BuildContext ctx) {
        ctx.push("/SnacksScreen");
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    final displayedCategories =
        limit != null ? categories.take(limit!).toList() : categories;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.w,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
          ),
          itemCount: displayedCategories.length,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          itemBuilder: (context, index) {
            return CategoryCardItem(
              title: categories[index]['title'],
              imagePath: categories[index]['image'],
              onTap: () => categories[index]['onTap'](context),
            );
          },
        ),
      ],
    );
  }
}
