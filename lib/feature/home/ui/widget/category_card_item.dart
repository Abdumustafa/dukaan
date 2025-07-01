import 'package:dukaan/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onTap;
  const CategoryCardItem(
      {required this.title, required this.imagePath, super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 150.w,
          margin: EdgeInsets.symmetric(horizontal: 8.0.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.r,
                spreadRadius: 2.r,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyles.font14whiteBold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
