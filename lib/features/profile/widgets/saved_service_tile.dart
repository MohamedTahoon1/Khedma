import 'package:flutter/material.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/models/service_id.dart';
import 'package:khedma/features/profile/data/model/service_model.dart';


class SavedServiceTile extends StatelessWidget {

  final Service service;

  const SavedServiceTile({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(service.icon, color: Colors.blue),
        title: Text(service.id.title(l10n)),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
