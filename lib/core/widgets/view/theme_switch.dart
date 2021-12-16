import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:threadofon/services/app_setting_services.dart';
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
            AppSettingServices.to.toggleTheme(isDark: value);
          },
          value: AppSettingServices.to.isDark.value,
          leading: const Icon(Icons.brightness_6),
          text: TranslateHelper.dark_theme,
        );
      },
    );
  }
}
