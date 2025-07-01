import 'dart:async';
import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/Authantication/ui/screen/wapper.dart';
import 'package:dukaan/feature/Authantication/ui/widget/or_continue_with_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerifyPhoneScreen extends StatefulWidget {
  VerifyPhoneScreen({
    super.key,
    required this.vid,
  });
  final String vid;

  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  var code = "";
  TextEditingController otpController = TextEditingController();
  bool isButtonEnabled = false;
  int countdown = 30;
  late Timer timer;

  signIn() async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: widget.vid, smsCode: code);
    try {
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) => Get.offAll(Wapper()));
    } on FirebaseException catch (e) {
      Get.snackbar("Error", e.code);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    setState(() {
      countdown = 30;
    });
    startTimer();
  }

  void _onOtpChanged(value) {
    setState(() {
      code = value;
      isButtonEnabled = value.length == 6;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 650.h,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Verify your phone number",
                  style: TextStyles.font22BlackBold,
                ),
                verticalSpace(10),
                Text(
                  "Enter the 4-digit verification code sent to\n+201029709220",
                  textAlign: TextAlign.center,
                  style: TextStyles.font16greymedium,
                ),
                verticalSpace(25),
                SizedBox(
                  width: double.infinity,
                  child: Pinput(
                    controller: otpController,
                    length: 6,
                    onChanged: _onOtpChanged,
                    defaultPinTheme: PinTheme(
                      textStyle: TextStyles.font20BlackBold,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 2.w,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                    ),
                  ),
                ),
                verticalSpace(50),
                OrContinueWithGoogle(),
                Spacer(),
                AppElevatedButton(
                    elevateText: "Continue",
                    isButtonEnabled: isButtonEnabled,
                    onPressed: () => signIn()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
