import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/route/app_routes.dart';
import 'package:khedma/core/route/route.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // ← ADD THIS

// ignore: must_be_immutable
class Khedma extends StatelessWidget {
  Routes approuts;
  Khedma({super.key, required this.approuts});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(420, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          locale: const Locale('ar'), // Arabic
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],

          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          debugShowCheckedModeBanner: false,
          title: 'First Method',

          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),

          initialRoute: AppRoutes.splash,
          onGenerateRoute: approuts.generateRoute,
        );
      },
    );
  }
}
