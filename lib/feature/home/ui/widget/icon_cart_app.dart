import 'package:dukaan/feature/my_card/ui/screen/my_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconCartApp extends StatefulWidget {
  const IconCartApp({super.key, required this.iconColor});
  final Color iconColor;

  @override
  State<IconCartApp> createState() => _IconCartAppState();
}

class _IconCartAppState extends State<IconCartApp> {
  int cartItemCount = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined,
              color: widget.iconColor, size: 30),
          onPressed: () {
            Get.to(() => MyCartScreen());
          },
        ),
        if (cartItemCount > 0)
          Positioned(
            right: 5,
            top: 1,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(
                minWidth: 10,
                minHeight: 10,
              ),
              child: Text(
                "$cartItemCount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
