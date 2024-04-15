import 'package:flucstore/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryWidgets extends StatelessWidget {
  final String path;
  final String title;
  final Color color;
  const CategoryWidgets({super.key, required this.path, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                path,
                width: 24,
                height: 24,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(title, style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: colorGrey
          ),)
        ],
      ),
    );
  }
}
