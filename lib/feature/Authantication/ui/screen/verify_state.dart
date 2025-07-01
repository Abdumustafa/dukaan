import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/Authantication/ui/screen/login_email_and_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VerifyState extends StatefulWidget {
  const VerifyState({super.key});

  @override
  State<VerifyState> createState() => _VerifyStateState();
}

class _VerifyStateState extends State<VerifyState> {
  void initState() {
    sendVerifylink();
  }

  sendVerifylink() async {
    final user = FirebaseAuth.instance.currentUser!;
    await user.sendEmailVerification().then((value) => {
          Get.snackbar(
            "Link send",
            "A link has been send to your email",
            margin: EdgeInsets.all(30),
          ),
        });
  }

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, right: 10.w, left: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(50.h),
              AppElevatedButton(
                elevateText: "Continue",
                isButtonEnabled: true,
                onPressed: (() => signIn()),
              ),
              verticalSpace(50.h),
              GestureDetector(
                  onTap: () {
                    Get.to(() => SignupEmailAndPassword());
                  },
                  child: Text("Regester")),
            ],
          ),
        ),
      ),
    );
  }
}
