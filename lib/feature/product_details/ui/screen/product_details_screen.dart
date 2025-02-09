import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:dukaan/feature/home/ui/widget/icon_cart_app.dart';
import 'package:dukaan/feature/product/ui/widget/vertical_list_builder_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int numberOfProducts = 1;
  int cartItemCount = 3;

  void increaseQuantity() {
    setState(() {
      numberOfProducts++;
    });
  }

  void decreaseQuantity() {
    if (numberOfProducts > 1) {
      setState(() {
        numberOfProducts--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.green.shade50,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconCartApp(
              iconColor: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                      ),
                    ),
                    height: 300.h,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 10.h),
                      child: Image.asset(
                        "assets/images/snack.png",
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20.h,
                    right: 20.w,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30.sp,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5.0.w, top: 8.h),
                          child: Text(
                            "Snack Bar",
                            style: TextStyles.font24BlackBold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0.sp),
                          child: Text(
                            "199.8",
                            style: TextStyles.font20BlackBoldPoppins,
                          ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: decreaseQuantity,
                              child: Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.0.sp),
                              child: Text(
                                "$numberOfProducts",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: increaseQuantity,
                              child: Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  color: ColorsManager.mainSeaGreen,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0.sp),
                          child: Text(
                            "Description",
                            style: TextStyles.font15BlackBold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0.w, top: 8.h),
                          child: Text(
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            " Snacks are defined as smaller, less structured meal that are not eaten during regular meal times, such as breakfast (morning), lunch (midday), and dinner (evening). Snacks come in a variety of forms including fresh ingredients and packaged and processed foods. Some of the common snack products include tortilla chips, corn chips, potato chips, extruded products (direct expansion and pellets), pork rinds, pretzels, popcorn, nuts, and seeds. Beverages are considered a snack if they have substantive amounts of fruits like strawberries, banana, and kiwis. Processed snack foods are designed to be more satisfying, less perishable, and more durable and portable than prepared foods. Snacking is more common today as snacks and fast food are more readily available and are quick substitutes for regular meals.",
                            style: TextStyles.font16greymedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0.w, top: 8.h),
                          child: Text(
                            "In the same category",
                            style: TextStyles.font15BlackBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListBuilderProductItem(
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 12.h, left: 10.w, right: 10.w),
          child: AppElevatedButton(
            elevateText: "Add to cart",
            isButtonEnabled: true,
            onPressed: () {},
          ),
        ));
  }
}
