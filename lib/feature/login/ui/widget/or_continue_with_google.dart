import 'package:dukaan/core/helper/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrContinueWithGoogle extends StatelessWidget {
  const OrContinueWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                "Or Continue with",
              ),
            ),
            Expanded(child: Divider(color: Colors.grey)),
          ],
        ),
        verticalSpace(20.h),
        Center(
          child: GestureDetector(
            onTap: () {
              context.push("/VerifyPhoneScreen");
            },
            child: Container(
              height: 80.h,
              width: 80.w,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(
                "assets/images/google_icon.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
