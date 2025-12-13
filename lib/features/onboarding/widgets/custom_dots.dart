import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  final double? dotsIndex;
  const CustomDots({super.key, this.dotsIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      decorator: DotsDecorator(
        activeColor: Colors.blue,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.blue),
        ),
      ),
      position: dotsIndex!,
    );
  }
}
