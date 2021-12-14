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
  var langCode = ConstDef.defCodeLocale;
  String patchDb = '';

  void setLocaleEN() {
    String locale = ConstLocale.enCode;
    langCode = locale;
    _updateLocale();
    GetStorage().write(ConstStorage.keyLocale, locale);
  }

  Future<void> _updateLocale() => Get.updateLocale(Locale(langCode));

  void setLocaleRU() {
    String locale = ConstLocale.ruCode;
    langCode = locale;
    _updateLocale();
    GetStorage().write(ConstStorage.keyLocale, locale);
  }

  void toggleTheme({required bool isDark}) {
    this.isDark.value = isDark;
    GetStorage().write(ConstStorage.keyIsDark, isDark);
  }

  Future<AppSettingServices> init() async {
    isDark.value = GetStorage().read(ConstStorage.keyIsDark) ?? ConstDef.isDark;
    langCode =
        GetStorage().read(ConstStorage.keyLocale) ?? ConstDef.defCodeLocale;

    return this;
  }

}
