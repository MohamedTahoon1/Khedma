import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/shared/custom_text.dart';
import 'package:khedma/core/themes/app_color.dart';
import 'package:khedma/features/onboarding/view/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen() ) );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomText(AppLocalizations.of(context)!.appname, size: 35.h, weight: FontWeight.bold)],
        ),
      ),
    );
  }
}
