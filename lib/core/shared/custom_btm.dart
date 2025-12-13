import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/shared/custom_text.dart';



class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.width,
    this.color,
    this.height,
    this.radius,
    this.textColor,
    this.widget,
    this.gap,
  });

  final String text;
  final Function()? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final double? radius;
  final Color? textColor;
  final Widget? widget;
  final double? gap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: widget.height ?? 50,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: widget.color ?? Colors.blue,
          borderRadius: BorderRadius.circular(widget.radius ?? 10),
        ),
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            CustomText( widget.text, color: widget.textColor ?? Colors.white, size: 14, weight: FontWeight.w500),
            verticalSpace(widget.gap ?? 0),
            widget.widget ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}