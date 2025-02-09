import 'package:dukaan/core/helper/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyMessageScreenView extends StatelessWidget {
  const EmptyMessageScreenView({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80.w, color: Colors.grey),
          verticalSpace(20),
           Text(
            "No products added yet",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          verticalSpace(10),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w
            ),
            child: Text(
              "Seems you haven't added anything to your cart yet! Start shopping and add items.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
