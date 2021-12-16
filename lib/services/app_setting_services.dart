import 'dart:ui';

import 'package:file_copy/file_copy.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/core/constants/storage.dart';

class AppSettingServices extends GetxService {
  static AppSettingServices get to => Get.find();

  var isDark = true.obs;


  void toggleTheme({required bool isDark}) {
    this.isDark.value = isDark;
    GetStorage().write(ConstStorage.keyIsDark, isDark);
  }

  Future<AppSettingServices> init() async {
    isDark.value = GetStorage().read(ConstStorage.keyIsDark) ?? ConstDef.isDark;
  

    return this;
  }

}
