import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/shared/custom_text.dart';

class CustomPageItem extends StatelessWidget {
  final String image;
  final String title;
  final String? subtitle;
  final double? width;
  const CustomPageItem({
    super.key,
    required this.image,
    required this.title,
    this.subtitle,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(240),
        Image.asset(image, width: width ?? 350.w),
        verticalSpace(10),
        CustomText(title, weight: FontWeight.bold),
        verticalSpace(7),
        CustomText(
          subtitle!,
          weight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ],
    );
  }
}
