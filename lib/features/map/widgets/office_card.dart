import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/themes/app_color.dart';
import 'package:khedma/features/map/data/model/map_model.dart';


class OfficeCard extends StatelessWidget {

  final Office office;

  const OfficeCard({super.key, required this.office});

  Color statusColor() {
    switch (office.status) {
      case "Low":
        return AppColors.success;
      case "Medium":
        return AppColors.warning;
      default:
        return AppColors.danger;
    }
  }

  String statusLabel(AppLocalizations l10n) {
    switch (office.status) {
      case "Low":
        return l10n.low;
      case "Medium":
        return l10n.medium;
      default:
        return l10n.high;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                office.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor().withOpacity(.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  statusLabel(l10n),
                  style: TextStyle(color: statusColor()),
                ),
              )
            ],
          ),

          verticalSpace(6),

          Text(
            office.address,
            style: const TextStyle(color: Colors.grey),
          ),

           verticalSpace(14),

          Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 18),
              const SizedBox(width: 6),
              Text(l10n.distanceWithUnit(office.distance)),
              const SizedBox(width: 20),
              const Icon(Icons.access_time, size: 18),
              const SizedBox(width: 6),
              Text(l10n.waitWithValue(office.waitTime)),
            ],
          ),

           verticalSpace(8),

          Row(
            children: [
              const Icon(Icons.phone, size: 18),
              const SizedBox(width: 6),
              Text(office.phone),
            ],
          ),

           verticalSpace(12),

          Wrap(
            spacing: 8,
            children: office.services
                .map((s) => Chip(label: Text(s)))
                .toList(),
          ),

          verticalSpace(14),

          Row(
            children: [

              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.navigation),
                  label: Text(l10n.directions),
                ),
              ),

              horizontalSpace(10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(l10n.reportWaitTime),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
