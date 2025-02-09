import 'package:dukaan/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AutoScrollPageView extends StatefulWidget {
  @override
  _AutoScrollPageViewState createState() => _AutoScrollPageViewState();
}

class _AutoScrollPageViewState extends State<AutoScrollPageView> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  final List<String> images = [
    "assets/images/image_page_view_one.jpeg",
    "assets/images/image_page_view_two.jpeg",
    "assets/images/image_page_view_three.jpeg",
    "assets/images/image_page_view_four.jpeg",
    "assets/images/image_page_view_five.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % images.length;
          _controller.animateToPage(
            _currentIndex,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        });
        _startAutoScroll();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 180.h,
            child: PageView.builder(
              controller: _controller,
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                height: 5.h,
                width: _currentIndex == index ? 20.w : 7.w,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? ColorsManager.mainSeaGreen
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
