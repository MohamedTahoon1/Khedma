import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {

  final IconData icon;
  final String title;
  final Widget? trailing;
  final String? badge;
  final bool isLast;

  const SettingTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.badge,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: badge != null
              ? CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Text(
                    badge!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                )
              : trailing ?? const Icon(Icons.chevron_right),
        ),

        if (!isLast)
          const Divider(height: 1)
      ],
    );
  }
}