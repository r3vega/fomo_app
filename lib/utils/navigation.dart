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
    GetPage(name: "/HOME", page: () => const Home()),
    GetPage(name: "/CHAT", page: () => const Chat()),
    GetPage(name: "/SEARCH", page: () => const Search()),
    GetPage(name: "/SETTINGS", page: () => const Settings()),
    GetPage(name: "/EVENTDETAIL", page: () => const EventDetail())
  ];
}

ThemeData getTheme() {
  return themeData;
}
