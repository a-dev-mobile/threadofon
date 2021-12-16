import 'package:flutter/material.dart';
import 'package:threadofon/core/widgets/view/theme_switch.dart';
import 'package:threadofon/lang/translation_helper.dart';




class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateHelper.setting),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const [
          ThemeSwitchWidget(),

        ],
      ),
    );
  }
}
