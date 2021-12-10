import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:threadofon/services/app_services.dart';
import '../button/btn_list_switch.dart';

class ThemeSwitchWidget extends StatelessWidget {
  const ThemeSwitchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BtnListSwitch(
          onChanged: (bool value) {
            AppServices.to.toggleTheme(isDark: value);
          },
          value: AppServices.to.isDark.value,
          leading: const Icon(Icons.brightness_6),
          text: AppLocalizations.of(context)!.dark_theme,
        );
      },
    );
  }
}
