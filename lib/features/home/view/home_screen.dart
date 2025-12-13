import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/shared/custom_text.dart';
import 'package:khedma/features/home/widgets/custom_card.dart';
import 'package:khedma/features/home/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(
              child: CustomText("اوراقي", weight: FontWeight.bold, size: 20),
            ),
            automaticallyImplyLeading: false,
            leading: Icon(Icons.menu),
          ),
          body: Column(
            children: [
              Search_Bar(),
              verticalSpace(30.h),
              Expanded(child: ServicesGrid()),
            ],
          ),
        ),
      ),
    );
  }
}
