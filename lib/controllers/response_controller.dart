import 'package:get/get.dart';

const _retries = 3;

class ResponseController extends GetxService {
  final _provider = _ResponseProvider();
  ResponseController._();

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

  Future<bool> get(String url, Function response,
      {Map<String, dynamic>? query, Function? onError}) async {
    bool complete = false;
    try {
      for (int i = 0; i < _retries && !complete; ++i) {
        await _provider.getRequest(url, query: query).then(
          (value) {
            if (value.hasError) {
              if (value.statusCode == 401) {
                //TOKEN ERROR
              } else if (onError != null) {
                onError(value);
              }
            } else {
              complete = true;
              response(value);
            }
          },
        );
      }
    } catch (error) {
      print(error);
      if (onError != null) {
        onError(error);
      }
      //HANDLE THE ERROR
      return false;
    }
    return complete;
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
