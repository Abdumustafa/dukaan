import 'package:dukaan/core/theming/styles.dart';
import 'package:dukaan/feature/home/ui/widget/offer_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersSection extends StatelessWidget {
  final List<Map<String, String>> offers = [
    {
      'title': '50% Off on Groceries',
      'image': 'assets/images/image_page_view_four.jpeg',
    },
    {
      'title': 'Buy 1 Get 1 Free',
      'image': 'assets/images/image_page_view_four.jpeg',
    },
    {
      'title': 'Limited Time Discount',
      'image': 'assets/images/image_page_view_four.jpeg',
    },
    {
      'title': 'Special Eid Offer',
      'image': 'assets/images/image_page_view_four.jpeg',
    },
  ];

   OffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
          child: Text(
            "Offers",
            style: TextStyles.font18WhiteBold,
          ),
        ),
        SizedBox(
          height: 180.h, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            itemBuilder: (context, index) {
              return OfferCard(
                title: offers[index]['title']!,
                imagePath: offers[index]['image']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
