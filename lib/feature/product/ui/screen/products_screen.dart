import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/feature/home/ui/widget/icon_cart_app.dart';
import 'package:dukaan/feature/product/ui/widget/horezonta_listview_prodact.dart';
import 'package:dukaan/feature/product/ui/widget/vertical_list_builder_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SnacksScreen extends StatelessWidget {
  const SnacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Snacks", style: TextStyles.font18WhiteBold),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconCartApp(
            iconColor: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
            child: HorizontalListBuilderProdact(),
          ),
          SizedBox(height: 10.h),
          ListBuilderProductItem(
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
    );
  }
}
