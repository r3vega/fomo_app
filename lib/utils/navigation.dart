import 'package:get/get.dart';

void toScreen(String name, {dynamic arguments}) {
  Get.toNamed(name, arguments: arguments);
}
