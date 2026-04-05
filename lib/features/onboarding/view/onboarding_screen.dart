import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/shared/bottomNavigation.dart';
import 'package:khedma/core/shared/custom_btm.dart';
import 'package:khedma/core/shared/custom_text.dart';
import 'package:khedma/features/onboarding/widgets/custom_dots.dart';
import 'package:khedma/features/onboarding/widgets/custom_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  int currentPage = 0;

  void nextPage() {
    if (currentPage < 2) {
      controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => BottomNavigation()),
      );
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => currentPage = index);
            },
          ),
          Positioned(
            top: 40.h,
            left: 24.w,
            child: Visibility(
              visible: currentPage != 0,
              child: GestureDetector(
                onTap: () => controller.jumpToPage(0),
                child: CustomText(
                  l10n.skip,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 220.h,
            left: 0,
            right: 0,
            child: Center(
              child: CustomDots(index: currentPage),
            ),
          ),
          Positioned(
            bottom: 150.h,
            left: 24.w,
            right: 24.w,
            child: CustomButton(
              onTap: nextPage,
              text: currentPage == 2 ? l10n.startNow : l10n.next,
            ),
          ),
        ],
      ),
    );
  }
}

