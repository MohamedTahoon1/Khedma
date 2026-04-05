import 'package:flutter/material.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'custom_page_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;

  const CustomPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: [
        CustomPageItem(
          image: "assets/image/onbaording1.png",
          title: l10n.welcomeTitle,
          subtitle: l10n.welcomeSubtitle,
        ),
        CustomPageItem(
          image: "assets/image/onbaording2.png",
          title: l10n.everythingTitle,
          subtitle: l10n.everythingSubtitle,
          width: 190,
        ),
        CustomPageItem(
          image: "assets/image/onbaording3.png",
          title: l10n.readyTitle,
          subtitle: l10n.readySubtitle,
          width: 200,
        ),
      ],
    );
  }
}

