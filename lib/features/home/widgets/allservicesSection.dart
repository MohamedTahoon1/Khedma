import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/features/home/data/service_data.dart';
import 'package:khedma/features/home/widgets/serviceTile.dart';

class AllServicesSection extends StatelessWidget {
  const AllServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final services = ServiceTileData.samples;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.allServices),
        verticalSpace(12),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: services.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 112,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return ServiceTile(data: services[index]);
          },
        ),
      ],
    );
  }
}
