import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/feature/add_email_and_password/ui/widget/name_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameInputFields extends StatelessWidget {
  const NameInputFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NameTextField(
          labelText: 'First Name',
        ),
        horizontalSpace(10.w),
        NameTextField(
          labelText: 'Last Name',
        ),
      ],
    );
  }
}
