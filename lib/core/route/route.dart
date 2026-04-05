import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/route/app_routes.dart';
import 'package:khedma/core/shared/bottomNavigation.dart';
import 'package:khedma/features/home/view/home_screen.dart';
import 'package:khedma/features/map/view/map_screem.dart';
import 'package:khedma/features/onboarding/view/onboarding_screen.dart';
import 'package:khedma/features/profile/view/profile_screen.dart';
import 'package:khedma/features/splash/splash_screen.dart';

abstract class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.bottomNav:
       return MaterialPageRoute(builder: (context) => BottomNavigation());
        case AppRoutes.home :
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.profile:
       return MaterialPageRoute(builder: (context) => ProfileScreen());
       case AppRoutes.map:
       return MaterialPageRoute(builder: (context) => MapScreen());
      case AppRoutes.onboarding:
      return MaterialPageRoute(builder: (context) => OnboardingScreen()); 
      case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => SplashScreen()); 
    default:
    return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                AppLocalizations.of(context)!.noRouteDefined(settings.name ?? ''),
              ),
            ),
          ),
        ); 
    }
  }
}
