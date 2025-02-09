import 'package:dukaan/core/theming/colors.dart';
import 'package:dukaan/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.price,
    required this.descriptionProduct,
    required this.onTap,
  });

  final String image;
  final String price;
  final String descriptionProduct;
  final Function() onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        height: 250.h,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          elevation: 2,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              gradient: LinearGradient(
                colors: [Colors.green.shade100, Colors.white],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Image.asset(
                        widget.image,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.price,
                                style: TextStyles.font15BlackBold),
                            SizedBox(height: 4.h),
                            Flexible(
                              child: Text(
                                widget.descriptionProduct,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 5.w,
                  top: 6.h,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Icon(
                      isFavorite ? Icons.favorite_outline : Icons.favorite,
                      color: isFavorite ? Colors.grey : Colors.red,
                      size: 28.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  right: 10.w,
                  child: GestureDetector(
                    onTap: () {
                      print("add");
                    },
                    child: Icon(
                      Icons.add_circle_outlined,
                      size: 40.sp,
                      color: ColorsManager.mainSeaGreen,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
