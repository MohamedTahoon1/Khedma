import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khedma/core/route/app_routes.dart';
import 'package:khedma/features/home/view/home_screen.dart';
import 'package:khedma/features/onboarding/view/onboarding_screen.dart';
import 'package:khedma/features/splash/splash_screen.dart';

class Routes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home :
       return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.onboarding:
      return MaterialPageRoute(builder: (context) => OnboardingScreen()); 
      case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => SplashScreen()); 
    default:
    return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        ); 
    }
  }
}
