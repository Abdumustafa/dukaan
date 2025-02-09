import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem({super.key, required this.icon,required this.title,required this.onTap,required this.color});
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title,
          style: TextStyle(
              fontSize: 16.sp, fontWeight: FontWeight.w500, color: color)),
      onTap: onTap,
    );
  }
}
