import 'dart:async';
import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/login/ui/widget/or_continue_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  TextEditingController otpController = TextEditingController();
  bool isButtonEnabled = false;
  int countdown = 30;
  late Timer timer;

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

  void _onOtpChanged(String value) {
    setState(() {
      isButtonEnabled = value.length == 4;
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
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
                    length: 4,
                    onChanged: _onOtpChanged,
                    defaultPinTheme: PinTheme(
                      width: 50.w,
                      height: 50.h,
                      textStyle: TextStyles.font20BlackBold,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black, width: 2.w),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 14.w),
                    ),
                  ),
                ),
                verticalSpace(50),
                OrContinueWithGoogle(),
                Spacer(),
                AppElevatedButton(
                  elevateText: "Continue",
                  isButtonEnabled: isButtonEnabled,
                  onPressed: () {
                    context.go("/AddUserNameAndPassword");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
