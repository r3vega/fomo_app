import 'package:flutter/material.dart';
import 'package:fomo/controllers/controllers.dart';
import 'package:fomo/screens/screens.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
  await Get.putAsync(ResponseController.init).then((respC) => {
        runApp(GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: respC.getTheme(),
          initialRoute: respC.getInitialRoute(),
          getPages: respC.getPages(),
        ))
      });
}
