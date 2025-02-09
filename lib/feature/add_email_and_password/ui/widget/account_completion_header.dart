import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountCompletionHeader extends StatelessWidget {
  const AccountCompletionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's finish up your account",
          style: TextStyles.font22BlackBold,
        ),
        verticalSpace(10.h),
        Text(
          "Add your missing information to start shopping!",
          style: TextStyles.font16greymedium,
        ),
      ],
    );
  }
}
