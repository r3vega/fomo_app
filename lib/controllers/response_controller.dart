import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fomo/screens/screens.dart';
import 'package:fomo/theme.dart';

class ResponseController extends GetxService {
  final _provider = _ResponseProvider();
  ResponseController._();
  String initialRoute = "/LOGIN";

  static ResponseController get to => Get.find();
  static Future<ResponseController> init() async {
    try {
      return Get.find();
    } catch (_) {
      final instance = ResponseController._();
      //await instance._init();
      return instance;
    }
  }

  ThemeData getTheme() {
    return themeData;
  }

  String getInitialRoute() {
    return initialRoute;
  }

  List<GetPage> getPages() {
    return [
      GetPage(name: "/LOGIN", page: () => const Login()),
      GetPage(name: "/HOME", page: () => const Home()),
      GetPage(name: "/CHAT", page: () => const Chat()),
      GetPage(name: "/SEARCH", page: () => const Search()),
      GetPage(name: "/SETTINGS", page: () => const Settings()),
    ];
  }
}

class _ResponseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.timeout = const Duration(seconds: 20);
    for (int i = 0; i < sockets.length; ++i) {
      sockets[i].ping = const Duration(seconds: 20);
    }
  }

  Future<dynamic> getRequest(String url, {Map<String, dynamic>? query}) async {
    final response = await get(url, query: query);
    return response;
  }
}
