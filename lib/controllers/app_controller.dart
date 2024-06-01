import 'package:fomo/controllers/response_controller.dart';
import 'package:fomo/models/models.dart';
import 'package:get/get.dart';

const _bootstrapPath =
    "https://akd6gl7w71.execute-api.eu-west-1.amazonaws.com/DEV/bootstrap";

class AppController extends GetxService {
  static AppController get to => Get.find();
  AppController._();
  final ResponseController _respC = ResponseController.to;
  String _initialRoute = "/LOGIN";
  late Bootstrap _bootstrap;

  static Future<AppController> init() async {
    try {
      return Get.find();
    } catch (_) {
      final instance = AppController._();
      //await instance._init();
      await instance._getBootstrapRequest();
      return instance;
    }
  }

  String getInitialRoute() {
    return _initialRoute;
  }

  Future<void> _getBootstrapRequest() async {
    await _respC.get(_bootstrapPath, (value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> body = value.body as Map<String, dynamic>;
        _bootstrap = Bootstrap.fromJson(body);
      }
    }).then(
      (value) {
        if (value) {
          _initialRoute = "/LOGIN";
        }
      },
    );
  }
}
