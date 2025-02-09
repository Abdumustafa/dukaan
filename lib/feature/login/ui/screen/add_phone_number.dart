import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/login/ui/widget/or_continue_with_google.dart';
import 'package:dukaan/feature/login/ui/widget/phone_number_login_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhoneNumber extends StatefulWidget {
  const AddPhoneNumber({super.key});

  @override
  State<AddPhoneNumber> createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  final TextEditingController _phoneController = TextEditingController();
  bool isButtonEnabled = false;

  void _onPhoneChanged(String value) {
    if (value.length == 11) {
      setState(() {
        isButtonEnabled = true;
      });
    } else {
      setState(() {
        isButtonEnabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Dukaan",
          style: TextStyles.font22BlackBoldKumarOne,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0.w),
        child: ListView(
          children: [
            PhoneNumberLoginHeader(),
            verticalSpace(
              20.h,
            ),
            Text(
              "Phone number",
              style: TextStyles.font15BlackBold,
            ),
            verticalSpace(10.h),
            Container(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Text(
                    "🇪🇬 +20  ",
                    style: TextStyles.font15BlackMedium,
                  ),
                  verticalSpace(10.h),
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      maxLength: 11,
                      onChanged: _onPhoneChanged,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "XXXX XXX XXXX",
                        border: InputBorder.none,
                        counterText: "",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(20.h),
            AppElevatedButton(
              isButtonEnabled: isButtonEnabled,
              onPressed: () {
                context.push("/VerifyPhoneScreen");
              },
              elevateText: 'Continue',
            ),
            verticalSpace(40.h),
            OrContinueWithGoogle(),
          ],
        ),
      ),
    );
  }
}
