import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/empty_message_screen_view.dart';
import 'package:dukaan/feature/home/ui/widget/icon_cart_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Favorites",
          style: TextStyles.font18blackBold,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconCartApp(
            iconColor: Colors.black,
          )
        ],
      ),
      body: EmptyMessageScreenView(
        icon: Icons.favorite,
      ),
    );
  }
}
