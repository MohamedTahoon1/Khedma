import 'package:flutter/material.dart';
import 'package:khedma/core/helpers/space.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/core/themes/app_color.dart';
import 'package:khedma/features/home/widgets/recentcard.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.recent, style: Theme.of(context).textTheme.headlineSmall),
        verticalSpace(12),
        Column(
          children:  [
            RecentCard(
              title: l10n.idRenewal,
              subtitle: l10n.twoDaysAgo,
              status: l10n.inProgress,
              statusColor: Color(0xFF4DB6AC),
              showStatusFilled: false,
            ),
            SizedBox(height: 12),
            RecentCard(
              title: l10n.birthCertificate,
              subtitle: l10n.oneWeekAgo,
              status: l10n.completed,
              statusColor: AppColors.success,
              showStatusFilled: true,
            ),
          ],
        ),
      ],
    );
  }
}
