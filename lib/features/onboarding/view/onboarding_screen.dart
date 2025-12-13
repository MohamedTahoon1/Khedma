import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/shared/custom_btm.dart';
import 'package:khedma/core/shared/custom_text.dart';
import 'package:khedma/features/home/view/home_screen.dart';
import 'package:khedma/features/onboarding/widgets/custom_dots.dart';
import 'package:khedma/features/onboarding/widgets/custom_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 2)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            CustomPageView(pageController: pageController),
            Positioned(
              left: 175,
              bottom: 230,
              child: CustomDots(
                dotsIndex: pageController!.hasClients
                    ? pageController?.page
                    : 2,
              ),
            ),
            Visibility(
              visible: pageController!.hasClients
                  ? (pageController?.page == 0 ? false : true)
                  : true,
              child: Positioned(
                top: 35.h,
                left: 32.h,
                child: CustomText('تخطي', color: Colors.grey.shade800),
              ),
            ),
            Positioned(
              bottom: 160.h,
              right: 10.h,
              left: 10.h,
              child: CustomButton(
                width: 250,
                onTap: () {
                  if (pageController!.page! > 0) {
                    pageController?.previousPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
                text: pageController!.hasClients
                    ? (pageController?.page == 0 ? "ابداء الان" : "التالي")
                    : "التالي",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
