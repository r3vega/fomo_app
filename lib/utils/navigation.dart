import 'package:flutter/material.dart';
import 'package:fomo/screens/screens.dart';
import 'package:fomo/theme.dart';
import 'package:get/get.dart';

void toScreen(String name, {dynamic arguments}) {
  Get.toNamed(name, arguments: arguments);
}

List<GetPage> getPages() {
  return [
    GetPage(name: "/LOGIN", page: () => const Login()),
    GetPage(
        name: "/HOME",
        page: () => const Home(),
        transitionDuration: Duration.zero),
    GetPage(
        name: "/CHAT",
        page: () => const Chat(),
        transitionDuration: Duration.zero),
    GetPage(
        name: "/SEARCH",
        page: () => const Search(),
        transitionDuration: Duration.zero),
    GetPage(
        name: "/SETTINGS",
        page: () => const Settings(),
        transitionDuration: Duration.zero),
    GetPage(name: "/CHATDETAIL", page: () => const ChatDetail()),
    GetPage(name: "/EVENTDETAIL", page: () => const EventDetail()),
    GetPage(name: "/CREATEEVENT", page: () => const CreateEvent())
  ];
}

ThemeData getTheme() {
  return themeData;
}
