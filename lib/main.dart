import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/utils/utils.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<ResponseController>(() async => await ResponseController.init());
  await Get.putAsync<AppController>(() async => await AppController.init());

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      initialRoute: "/LOGIN",
      getPages: getPages(),
    ),
  );
}
