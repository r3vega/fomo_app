import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "home",
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger_outline_sharp),
          label: "chat",
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "search",
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "settings",
          backgroundColor: Colors.transparent,
        ),
      ],
      currentIndex: widget.selected.index,
      onTap: (i) {
        switch (i) {
          case 0:
            toScreen("/HOME");
            break;
          case 1:
            toScreen("/CHAT");
            break;
          case 2:
            toScreen("/SEARCH");
            break;
          case 3:
            toScreen("/SETTINGS");
            break;
        }
      },
    );
  }
}
