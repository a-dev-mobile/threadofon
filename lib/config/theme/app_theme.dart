
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/colors.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
        appBarTheme: _getAppBarTheme(isDark: false, context: context),
        // bottomAppBarColor:const MaterialColor(primaryLight, mapSwatchLight),
        brightness: Brightness.light,
        // color for overlay scroll
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(primaryLight, mapSwatchLight)),
        primaryColor: ColorConstants.primary_500,
        scaffoldBackgroundColor: ColorConstants.neutral_white,
        textTheme: _getTextTheme(context: context, isDark: false),
        canvasColor: ColorConstants.neutral_white,
        iconTheme: iconTheme());
  }

  static IconThemeData iconTheme() =>
      const IconThemeData(color: ColorConstants.neutral_grey_400);

  static ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark().copyWith(
        // bottomAppBarColor: const MaterialColor(primaryDark, mapSwatchDark),
        appBarTheme: _getAppBarTheme(isDark: true, context: context),
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(primaryDark, mapSwatchDark)),
        primaryColor: ColorConstants.primary_301,
        scaffoldBackgroundColor: ColorConstants.neutral_grey_900,
        textTheme: _getTextTheme(context: context, isDark: true),
        canvasColor: ColorConstants.neutral_grey_900,
        iconTheme: iconTheme());
  }

  static AppBarTheme _getAppBarTheme(
      {required BuildContext context, required bool isDark}) {
    Color backgroundColor =
        isDark ? ColorConstants.neutral_grey_900 : ColorConstants.neutral_white;
    Color foregroundColor = isDark
        ? ColorConstants.neutral_grey_200
        : ColorConstants.neutral_grey_800;

    AppBarTheme appBarTheme = AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 1,
        centerTitle: true,
        foregroundColor: foregroundColor,
        systemOverlayStyle: isDark
            ? SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: backgroundColor,
                statusBarIconBrightness: Brightness.light,
              )
            : SystemUiOverlayStyle.light.copyWith(
                statusBarColor: backgroundColor,
                statusBarIconBrightness: Brightness.dark));

    return appBarTheme;
  }

  static TextTheme _getTextTheme(
      {required BuildContext context, required bool isDark}) {
    Color bodyColor = isDark
        ? ColorConstants.neutral_grey_200
        : ColorConstants.neutral_grey_800;

    var textTheme = Theme.of(context)
        .textTheme
        .apply(fontFamily: 'montserrat', bodyColor: bodyColor);
    return textTheme;
  }
}
