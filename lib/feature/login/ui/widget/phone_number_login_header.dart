import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberLoginHeader extends StatelessWidget {
  const PhoneNumberLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login With Phone Number",
          style: TextStyles.font20BlackBoldPoppins,
        ),
        verticalSpace(10.h),
        Text(
          "Enter your phone number to log in or sign up",
          style: TextStyles.font20GreyMedium,
        ),
      ],
    );
  }
}
