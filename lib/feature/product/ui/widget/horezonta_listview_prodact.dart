import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalListBuilderProdact extends StatefulWidget {
  const HorizontalListBuilderProdact({
    super.key,
  });

  @override
  State<HorizontalListBuilderProdact> createState() =>
      _HorizontalListBuilderProdactState();
}

class _HorizontalListBuilderProdactState
    extends State<HorizontalListBuilderProdact> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> categories = [
    {'title': 'Candy world', 'icon': Icons.cake},
    {'title': 'Desserts', 'icon': Icons.icecream},
    {'title': 'Nuts &', 'icon': Icons.local_dining},
    {'title': 'Candy world', 'icon': Icons.cake},
    {'title': 'Desserts', 'icon': Icons.icecream},
    {'title': 'Nuts &', 'icon': Icons.local_dining},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ChoiceChip(
            label: Row(
              children: [
                Icon(categories[index]['icon'], size: 18),
                SizedBox(width: 5.w),
                Text(categories[index]['title']),
              ],
            ),
            selected: index == selectedIndex,
            selectedColor: Colors.green.shade100,
            onSelected: (selected) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        );
      },
    );
  }
}
