import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/Authantication/ui/screen/forget_password.dart';
import 'package:dukaan/feature/Authantication/ui/screen/login_email_and_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddUserNameAndPassword extends StatefulWidget {
  const AddUserNameAndPassword({super.key});

  @override
  State<AddUserNameAndPassword> createState() => _AddUserNameAndPasswordState();
}

class _AddUserNameAndPasswordState extends State<AddUserNameAndPassword> {
  bool _isObscured = true;
  bool _isLoading = false;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  signIn() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("problem"),
          content: Text(e.code),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("ok"),
            ),
          ],
        ),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("problem"),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("ok"),
            ),
          ],
        ),
      );
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.only(top: 60.h, right: 10.w, left: 10.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(20.h),
                

                    verticalSpace(25.h),
                    verticalSpace(25.h),
                    TextField(
                      controller: emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorsManager.mainSeaGreen, width: 2.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                    verticalSpace(25.h),
                    TextField(
                      controller: passwordController,
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorsManager.mainSeaGreen, width: 2.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isObscured
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => ForgetPassword());
                        },
                        child: Text("Forget Password")),
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
