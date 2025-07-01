import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool _isObscured = true;
  final TextEditingController emailController = TextEditingController();

  resetPassword() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: emailController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          verticalSpace(300.h),
          TextField(
            controller: emailController,
            obscureText: false,
            decoration: InputDecoration(
              labelText: "Email",
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
          verticalSpace(50.h),
          AppElevatedButton(
            elevateText: "Send code",
            isButtonEnabled: true,
            onPressed: (() => resetPassword()),
          ),
        ],
      ),
    );
  }
}
