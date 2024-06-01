import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/utils/utils.dart';
import 'package:get/get.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      initialRoute: "/LOGIN",
      getPages: getPages(),
    ),
  );
  await Get.putAsync(AppController.init).then((appC) => {
        runApp(
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: getTheme(),
            initialRoute: "/LOGIN",
            getPages: getPages(),
          ),
        )
      });
}
