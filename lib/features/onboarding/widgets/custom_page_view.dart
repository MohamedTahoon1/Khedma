// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:khedma/features/onboarding/widgets/custom_page_item.dart';

// ignore: must_be_immutable
class CustomPageView extends StatefulWidget {
  final PageController? pageController;
  CustomPageView({Key? key, required this.pageController}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        CustomPageItem(
          image: "assets/image/onbaording1.png",
          title: "مرحبًا بك في دليل الحكومة بدون قائمة انتظار",
          subtitle: "تصفح الأعمال الورقية بسهولة. سنرشدك إلى كل خطوة",
        ),

        CustomPageItem(
          image: "assets/image/onbaording2.png",
          title: "مرحبًا بك في دليل الحكومة بدون قائمة انتظار",
          subtitle: "تصفح الأعمال الورقية بسهولة. سنرشدك إلى كل خطوة",
          width: 190.w,
        ),
        CustomPageItem(
          image: "assets/image/onbaording3.png",
          title: "مرحبًا بك في دليل الحكومة بدون قائمة انتظار",
          subtitle: "تصفح الأعمال الورقية بسهولة. سنرشدك إلى كل خطوة",
          width: 200.w,
        ),
      ],
    );
  }
}
