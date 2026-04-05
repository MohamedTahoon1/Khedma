import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/features/map/data/model/map_model.dart';
import 'package:khedma/features/map/widgets/map_header.dart';
import 'package:khedma/features/map/widgets/map_preview.dart';
import 'package:khedma/features/map/widgets/map_toggle.dart';
import 'package:khedma/features/map/widgets/office_card.dart';


class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final offices = [
      Office(
        name: l10n.centralGovOfficeName,
        address: l10n.centralGovOfficeAddress,
        phone: l10n.centralGovOfficePhone,
        distance: 1.2,
        waitTime: l10n.centralGovOfficeWaitTime,
        status: "Low",
        services: [l10n.idRenewal, l10n.passport, l10n.birthCertificate],
      ),
      Office(
        name: l10n.northDistrictOfficeName,
        address: l10n.northDistrictOfficeAddress,
        phone: l10n.northDistrictOfficePhone,
        distance: 3.5,
        waitTime: l10n.northDistrictOfficeWaitTime,
        status: "High",
        services: [l10n.idRenewal, l10n.marriageCertificate, l10n.propertyDeed],
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [

            const MapHeader(),

           verticalSpace(20),

            const MapToggle(),

           verticalSpace(20),

            const MapPreview(),

           verticalSpace(20),

            ...offices.map((o) => OfficeCard(office: o))
          ],
        ),
      ),
    );
  }
}
