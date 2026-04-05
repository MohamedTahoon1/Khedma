import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/route/app_routes.dart';
import 'package:khedma/core/route/route.dart';
import 'package:khedma/core/themes/app_theme.dart';


class Khedma extends StatelessWidget {

  const Khedma({super.key, });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(420, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates ,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('ar'),
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appname,
          theme: AppTheme.lightTheme,
          initialRoute: AppRoutes.splash,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}
