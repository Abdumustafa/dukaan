import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetCallWhatsapp extends StatelessWidget {
  const BottomSheetCallWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(18.0.w),
            child: Text("Contact Us",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          ),
          GestureDetector(
            onTap: () {
            },
            child: Row(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp,
                      color: Colors.green, size: 30.sp),
                  onPressed: () {},
                ),
                Text("Whatsapp"),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.w, right: 20.w),
            child: Divider(),
          ),
          GestureDetector(
            onTap: () {
            },
            child: Padding(
              padding:  EdgeInsets.all(8.0.w),
              child: Row(
                children: [
                  Icon(Icons.phone),
                  Text("     Call"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
