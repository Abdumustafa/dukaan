import 'package:dukaan/feature/product/ui/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ListBuilderProductItem extends StatelessWidget {
  ListBuilderProductItem({
    super.key,
    required this.scrollDirection,
  });
  final Axis scrollDirection;
  final List products = [
    {
      'descriptionProduct':
          'Chocolate bar stuffed  is the good product to buy, it is very tasty and delicious',
      'price': '174.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Flavia wafer biscuits is the good product to buy, it is very tasty and delicious',
      'price': '18.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Jammy Wafer Rolls is the good product to buy, it is very tasty and delicious',
      'price': '42.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Molki milk chocolate is the good product to buy, it is very tasty and delicious',
      'price': '162.50',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Moments chocolate is the good product to buy, it is very tasty and delicious',
      'price': '48.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Chocolate bar stuffed  is the good product to buy, it is very tasty and delicious',
      'price': '174.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Flavia wafer biscuits is the good product to buy, it is very tasty and delicious',
      'price': '18.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Jammy Wafer Rolls is the good product to buy, it is very tasty and delicious',
      'price': '42.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Molki milk chocolate is the good product to buy, it is very tasty and delicious',
      'price': '162.50',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
    {
      'descriptionProduct':
          'Moments chocolate is the good product to buy, it is very tasty and delicious',
      'price': '48.00',
      'image': 'assets/images/snack.png',
      "onTap": (BuildContext ctx) {
        ctx.push("/ProductDetailsScreen");
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: scrollDirection,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: List.generate(
              products.length,
              (index) => SizedBox(
                width: (MediaQuery.of(context).size.width / 2) - 15.w,
                child: ProductCard(
                    descriptionProduct: products[index]['descriptionProduct'],
                    price: products[index]['price'],
                    image: products[index]['image'],
                    onTap: () => products[index]['onTap'](context)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
