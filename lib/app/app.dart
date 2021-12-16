import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:threadofon/lang/translation_service.dart';

import 'package:threadofon/services/app_setting_services.dart';

import '../config/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp.router(
          onGenerateTitle: (BuildContext context) => TranslateHelper.app_name,
          debugShowCheckedModeBanner: false,
          locale: TranslationService.locale,
          themeMode: AppSettingServices.to.isDark.value
              ? ThemeMode.dark
              : ThemeMode.light,
          getPages: AppPages.routes,
          fallbackLocale: TranslationService.fallbackLocale,
          theme: AppTheme.lightThemeData(context),
          darkTheme: AppTheme.darkThemeData(context),
          translations: TranslationService(),
        ));
  }
}
