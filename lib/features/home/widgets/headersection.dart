import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/themes/app_color.dart';
import 'package:khedma/features/home/widgets/greeting_box.dart';
import 'package:khedma/features/home/widgets/searchBox.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    const borderRadius = 16.0;

    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, Color(0xFF1976D2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 8),
            blurRadius: 24,
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Expanded(child: GreetingText()),
              // Optionally add a profile/avatar here
            ],
          ),
          verticalSpace(8),
           Text(
            AppLocalizations.of(context)!.header,
            style: TextStyle(color: AppColors.border, fontSize: 14),
          ),
          verticalSpace(12),
          const SearchBox(),
        ],
      ),
    );
  }
}
