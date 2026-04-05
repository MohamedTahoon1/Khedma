import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {

  final int index;

  const CustomDots({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: index.toDouble(),
      decorator: DotsDecorator(
        activeColor: Colors.blue,
        color: Colors.transparent,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}