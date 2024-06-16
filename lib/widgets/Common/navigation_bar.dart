import 'package:flutter/material.dart';
import 'package:fomo/controllers/app_controller.dart';
import 'package:fomo/models/bootstrap.dart';
import 'package:fomo/utils/utils.dart';

enum NavigationItem { home, chat, search, settings }

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({
    required this.selected,
    super.key,
  });

  final NavigationItem selected;
  @override
  State<NavigationBarWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarWidget> {
  late List<AppConfigItem> _navigationItems;
  @override
  void initState() {
    super.initState();
    _navigationItems = AppController.to.bootstrap.appConfig;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _navigationItems.map((configItem) {
        IconData icon;
        switch (configItem.name) {
          case 'HOME':
            icon = Icons.home_outlined;
            break;
          case 'CHAT':
            icon = Icons.messenger_outline_sharp;
            break;
          case 'SEARCH':
            icon = Icons.search_outlined;
            break;
          case 'SETTINGS':
            icon = Icons.settings_outlined;
            break;
          default:
            icon = Icons.circle; // Default icon
        }
        return BottomNavigationBarItem(
          icon: Icon(icon),
          label: configItem.name,
          backgroundColor: Colors.transparent,
        );
      }).toList(),
      currentIndex:
          _navigationItems.indexWhere((item) => item.name == widget.selected),
      onTap: (i) {
        toScreen('/${_navigationItems[i].name}');
      },
    );
  }
}
