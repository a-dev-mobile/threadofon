import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/core/constants/common.dart';

import 'package:threadofon/services/app_services.dart';

import '../config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.app_name,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          debugShowCheckedModeBanner: false,
          locale: Locale(AppServices.to.langCode),
          supportedLocales: AppLocalizations.supportedLocales,
          themeMode:
              AppServices.to.isDark.value ? ThemeMode.dark : ThemeMode.light,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          fallbackLocale: const Locale(ConstDef.defCodeLocale),
          theme: AppTheme.lightThemeData(context),
          darkTheme: AppTheme.darkThemeData(context),
        ));
  }
}

 

