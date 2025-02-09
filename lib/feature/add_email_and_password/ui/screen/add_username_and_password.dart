import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/add_email_and_password/ui/widget/account_completion_header.dart';
import 'package:dukaan/feature/add_email_and_password/ui/widget/name_input_fields.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddUserNameAndPassword extends StatefulWidget {
  const AddUserNameAndPassword({super.key});

  @override
  State<AddUserNameAndPassword> createState() => _AddUserNameAndPasswordState();
}

class _AddUserNameAndPasswordState extends State<AddUserNameAndPassword> {
  bool _isObscured = true;
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, right: 10.w, left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountCompletionHeader(),
            verticalSpace(25.h),
            NameInputFields(),
            verticalSpace(25.h),
            TextField(
              controller: passwordController,
              obscureText: _isObscured,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.blueGrey),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.mainSeaGreen, width: 2.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            verticalSpace(50.h),
            AppElevatedButton(
              elevateText: "Continue",
              isButtonEnabled: true,
              onPressed: () {
                context.go("/HomeScreen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
