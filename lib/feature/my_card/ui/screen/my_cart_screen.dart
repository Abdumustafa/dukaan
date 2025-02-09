import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/core/widget/empty_message_screen_view.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});
  final bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyles.font14whiteBold,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          EmptyMessageScreenView(
            icon: Icons.shopping_cart_outlined,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppElevatedButton(
              isButtonEnabled: isButtonEnabled,
              elevateText: "Go to Checkout",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
