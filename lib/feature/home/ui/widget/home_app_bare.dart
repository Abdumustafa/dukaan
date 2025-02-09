import 'package:dukaan/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppSearchTextFild extends StatelessWidget {
  const AppSearchTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Search for items",
        hintStyle: TextStyles.font16WhiteMedium,
        filled: true,
        fillColor: Colors.grey[900],
        prefixIcon: Icon(Icons.search, color: Colors.white, size: 20.sp),
        contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
