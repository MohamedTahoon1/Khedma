import 'package:flutter/material.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/models/service_id.dart';
import 'package:khedma/features/profile/data/model/service_model.dart';
import 'package:khedma/features/profile/widgets/profile_header.dart';
import 'package:khedma/features/profile/widgets/saved_service_tile.dart';
import 'package:khedma/features/profile/widgets/setting_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool notifications = true;

  final services = const [
    Service(ServiceId.idRenewal, Icons.badge),
    Service(ServiceId.passportApplication, Icons.book),
    Service(ServiceId.birthCertificate, Icons.description),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xfff5f6fa),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const ProfileHeader(),
            const SizedBox(height: 24),
            Text(
              l10n.savedServices,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            ...services.map((s) => SavedServiceTile(service: s)),
            const SizedBox(height: 24),
            Text(
              l10n.settings,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  SettingTile(
                    icon: Icons.bookmark_border,
                    title: l10n.savedServices,
                    badge: "3",
                  ),
                  SwitchListTile(
                    secondary: const Icon(Icons.notifications_none),
                    title: Text(l10n.notifications),
                    value: notifications,
                    onChanged: (v) => setState(() => notifications = v),
                  ),
                  SettingTile(
                    icon: Icons.language,
                    title: l10n.language,
                    trailing: Text(l10n.spanish),
                  ),
                  SettingTile(
                    icon: Icons.shield_outlined,
                    title: l10n.privacyPolicy,
                  ),
                  SettingTile(
                    icon: Icons.help_outline,
                    title: l10n.helpSupport,
                  ),
                  SettingTile(
                    icon: Icons.settings,
                    title: l10n.appSettings,
                    isLast: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

