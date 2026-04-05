import 'package:flutter/material.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/themes/app_color.dart';

class MapToggle extends StatelessWidget {
  const MapToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(child: Text(l10n.mapView)),
            ),
          ),

          Expanded(
            child: Center(child: Text(l10n.listView)),
          )
        ],
      ),
    );
  }
}
