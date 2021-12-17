// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateHelper {
  // он предназначен для предотвращения создания экземпляра TranslateHelper
  TranslateHelper._();
  static updateLocale(Locale locale) {
    Get.updateLocale(locale);
  }

  static String get threads => 'threads'.tr;
  static String get m_thread => 'm_thread'.tr;
  static String get g_thread => 'g_thread'.tr;
  static String get g_thread_gost => 'g_thread_gost'.tr;
  static String get m_thread_gost => 'm_thread_gost'.tr;
  static String get m_thread_abrv => 'm_thread_abrv'.tr;
  static String get g_thread_abrv => 'g_thread_abrv'.tr;



  static String get main => 'main'.tr;
  static String get search => 'search'.tr;
  static String get favorite => 'favorite'.tr;
  static String get setting => 'setting'.tr;
  static String get lets_get_started => 'lets_get_started'.tr;
  static String get select_threads => 'select_threads'.tr;
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
