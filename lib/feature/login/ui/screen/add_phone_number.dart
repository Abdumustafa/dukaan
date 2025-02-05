import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/theming/colors.dart';
import 'package:flutter/material.dart';

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
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "KumarOne"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "Login With Phone Number",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            verticalSpace(10),
            Text(
              "Enter your phone number to log in or sign up",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: "Poppins",
              ),
            ),
            verticalSpace(20),
            Text(
              "Phone number",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            verticalSpace(10),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    "🇪🇬 +20  ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  verticalSpace(10),
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
            verticalSpace(20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: isButtonEnabled
                      ? ColorsManager.mainSeaGreen
                      : Colors.grey[300],
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            verticalSpace(20),
            Center(
              child: Text(
                "Or Login with Email",
                style: TextStyle(
                    fontSize: 14,
                    color: ColorsManager.mainSeaGreen,
                    fontWeight: FontWeight.w500),
              ),
            ),
            verticalSpace(20),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or Continue with",
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),
            verticalSpace(20),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/images/google_icon.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
