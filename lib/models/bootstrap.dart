import 'dart:convert';

Bootstrap bootstrapFromJson(String str) => Bootstrap.fromJson(json.decode(str));

class Bootstrap {
  AccountInfo accountInfo;
  ServiceMap serviceMap;
  List<AppConfig> appConfig;

  Bootstrap({
    required this.accountInfo,
    required this.serviceMap,
    required this.appConfig,
  });

  factory Bootstrap.fromJson(Map<String, dynamic> json) => Bootstrap(
        accountInfo: AccountInfo.fromJson(json["accountInfo"]),
        serviceMap: ServiceMap.fromJson(json["serviceMap"]),
        appConfig: List<AppConfig>.from(
            json["appConfig"].map((x) => AppConfig.fromJson(x))),
      );
}

class AccountInfo {
  AccountInfo();

  factory AccountInfo.fromJson(Map<String, dynamic> json) => AccountInfo();
}

class AppConfig {
  String name;

  AppConfig({
    required this.name,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) => AppConfig(
        name: json["name"],
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
