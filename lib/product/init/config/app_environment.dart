import 'package:architecture_template_v2/product/init/config/app_configuration.dart';
import 'package:architecture_template_v2/product/init/config/dev_env.dart';
import 'package:architecture_template_v2/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

//Aplication enviroenment manager clas
final class AppEnvironment {
  //setup app environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  //General app environment

  AppEnvironment.general() {
    _config = !kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;
}

// Get app environment items
enum AppEnvironmentItems {
  baseUrl,
  apiKey;

  //get app environment items

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initalized: $e');
    }
  }
}
