import 'dart:async';

import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

//This class is used to initilialize the applicaton process
final class ApplicationInitialize {
  // project basic required initialize
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stack) {
        Logger().e(error);
      },
    );
  }

  Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();

    // error message read
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // TODO: Splash screen

    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
      // crash log insert here
      // custom service or custom logger insert here
      // TO DO: add crashlytics
    };
    AppEnvironment.general();
  }
}
