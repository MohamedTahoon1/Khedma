import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/features/home/widgets/allservicesSection.dart';
import 'package:khedma/features/home/widgets/headerSection.dart';
import 'package:khedma/features/home/widgets/recentsection.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 HeaderSection(),
                verticalSpace(22),
                 RecentSection(),
                verticalSpace(22),
                 AllServicesSection(),
               verticalSpace(22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
