import 'dart:convert';

Bootstrap bootstrapFromJson(String str) => Bootstrap.fromJson(json.decode(str));

class Bootstrap {
  String accountInfo;  //This needs to be change to AccountInfo objetc in the future
  ServiceMap serviceMap;
  List<AppConfigItem> appConfig;

  Bootstrap({
    required this.accountInfo,
    required this.serviceMap,
    required this.appConfig,
  });

  factory Bootstrap.fromJson(Map<String, dynamic> json) {
    var appConfigJson = json['appConfig'] as List;
    List<AppConfigItem> appConfigItems =
        appConfigJson.map((item) => AppConfigItem.fromJson(item)).toList();

    return Bootstrap(
      accountInfo: json['accountInfo'],
      serviceMap: ServiceMap.fromJson(json["serviceMap"]),
      appConfig: appConfigItems,
    );
  }
}

class AccountInfo {
  AccountInfo();

  factory AccountInfo.fromJson(Map<String, dynamic> json) => AccountInfo();
}

class AppConfigItem {
  final String name;
  final Map<String, String> items;

  AppConfigItem({required this.name, required this.items});

  factory AppConfigItem.fromJson(Map<String, dynamic> json) => AppConfigItem(
        name: json["name"],
        items: Map<String, String>.from(json['items']),
      );
}

class ServiceMap {
  String event;

  ServiceMap({
    required this.event,
  });

  factory ServiceMap.fromJson(Map<String, dynamic> json) => ServiceMap(
        event: json["event"],
      );
}
