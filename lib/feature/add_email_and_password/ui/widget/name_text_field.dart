import 'package:dukaan/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({
    super.key, required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.blueGrey),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsManager.mainSeaGreen, width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
