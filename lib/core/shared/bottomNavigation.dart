
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:khedma/core/l10n/app_localizations.dart';
import 'package:khedma/features/home/view/home_screen.dart';
import 'package:khedma/features/map/view/map_screem.dart';
import 'package:khedma/features/profile/view/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    HomeScreen(),
    MapScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return 
          Scaffold(

        body: tabItems[_selectedIndex],
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.home),
              title: Text(l10n.homeTab),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.map),
              title: Text(l10n.mapTab),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.person),
              title: Text(l10n.profileTab),
            ),
          ],
        ),
      );
  }
}
