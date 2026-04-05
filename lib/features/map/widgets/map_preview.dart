import 'package:flutter/material.dart';
import 'package:khedma/core/themes/app_color.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade100,
            Colors.green.shade100,
          ],
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Stack(
        children: [

          const Center(
            child: Icon(Icons.location_on, size: 40, color: AppColors.danger),
          ),

          Positioned(
            bottom: 12,
            right: 12,
            child: FloatingActionButton.small(
              backgroundColor: AppColors.card,
              onPressed: () {},
              child: const Icon(Icons.navigation, color: AppColors.primary),
            ),
          )
        ],
      ),
    );
  }
}