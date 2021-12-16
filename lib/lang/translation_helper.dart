// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateHelper {
  // он предназначен для предотвращения создания экземпляра TranslateHelper
  TranslateHelper._();
  static updateLocale(Locale locale) {
    Get.updateLocale(locale);
  }

  static String get main => 'main'.tr;
  static String get search => 'search'.tr;
  static String get favorite => 'favorite'.tr;
  static String get setting => 'setting'.tr;
  static String get lets_get_started => 'lets_get_started'.tr;
  static String get select_type_thread => 'select_type_thread'.tr;
  static String get internal_thread => 'internal_thread'.tr;
  static String get external_thread => 'external_thread'.tr;
  static String get msg_welcome_setting_first_launch =>
      'msg_welcome_setting_first_launch'.tr;
  static String get launch => 'launch'.tr;
  static String get msg_welcome_helper_thread => 'msg_welcome_helper_thread'.tr;

  static String get app_name => 'app_name'.tr;
  static String get app_lang => 'app_lang'.tr;

  static String get lang_ru => 'lang_ru'.tr;

  static String get dark_theme => 'dark_theme'.tr;
}
