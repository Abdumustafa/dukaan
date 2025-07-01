import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/feature/Authantication/ui/screen/verify_phone_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class OrContinueWithGoogle extends StatefulWidget {
  const OrContinueWithGoogle({
    super.key,
  });

  @override
  State<OrContinueWithGoogle> createState() => _OrContinueWithGoogleState();
}

class _OrContinueWithGoogleState extends State<OrContinueWithGoogle> {
  login() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

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
              // Get.to(() => VerifyPhoneScreen());
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
              child: GestureDetector(
                onTap: (() => login()),
                child: Image.asset(
                  "assets/images/google_icon.png",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
