import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/services/app_setting_services.dart';
import 'package:threadofon/services/db_services.dart';

import 'app/app.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  // Logger.level = Level.nothing; //TODO on LOG

await GetStorage.init();
    await Get.putAsync(() => AppSettingServices().init());
    await Get.putAsync(() => DbServices().init());
  await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
