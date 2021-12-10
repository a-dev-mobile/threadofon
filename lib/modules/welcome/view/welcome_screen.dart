import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/core/widgets/button/btn_large_primary.dart';
import 'package:threadofon/main.dart';

import '../../../app/app.dart';

import '../../../core/widgets/view/lang_switch_widget.dart';
import '../../../core/widgets/view/theme_switch.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(360, 690),
        orientation: Orientation.portrait);

    return Scaffold(
      body: Column(
        children: [
          Text('Настройка первого запуска'),
          Placeholder(
            fallbackWidth: 100.w,
            fallbackHeight: 100.w,
          ),
          Text('Резьбофон'),
          Text('Ваш помошник в мире резьб'),
          const ThemeSwitchWidget(),
          const LangSwitchWidget(),
          Spacer(),
          BtnLargePrimary(
              text: 'запуск',
              onClick: () {
                // Navigator.of(context).pushReplacementNamed(Routes.home);
                Get.offAllNamed(Routes.HOME);

                // context.read<NavigatorCubit>().showHome(blocDbCopy);
              })
        ],
      ),
    );
  }
}
