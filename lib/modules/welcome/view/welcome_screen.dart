import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/colors.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/core/widgets/button/btn_large_primary.dart';
import 'package:threadofon/core/widgets/view/theme_switch.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:threadofon/main.dart';


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
      body: SafeArea(
        child: Column(
          children: [
            Text(
              TranslateHelper.msg_welcome_setting_first_launch,
              style: AppTextStyle.H2(),
              textAlign: TextAlign.center,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 0.3.sh,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ConstAssets.svgNuts,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                        ),
                        SvgPicture.asset(
                          ConstAssets.svgBolt,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                        ),
                      ],
                    ),
                  ),
                  const WelcomeAppTitle(),
                ],
              ),
            ),
            Spacer(),
            const ThemeSwitchWidget(),
            
            SizedBox(
              width: 0.8.sw,
              child: BtnLargePrimary(
                  text: TranslateHelper.launch,
                  onClick: () {
                    // Navigator.of(context).pushReplacementNamed(Routes.home);

                    Get.offAllNamed(Routes.HOME);

                    // context.read<NavigatorCubit>().showHome(blocDbCopy);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class WelcomeAppTitle extends StatelessWidget {
  const WelcomeAppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          TranslateHelper.app_name,
          textAlign: TextAlign.center,
          style: TextStyle(
            // color: ConstColor Colors.text(context),
            letterSpacing: 2.0,
            fontSize: 32.w,
            fontWeight: FontWeight.bold,
            shadows: Get.isDarkMode == true
                //тень взависимости от темы
                ? <Shadow>[
                    const Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(25, 255, 255, 255),
                    ),
                    const Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 5.0,
                      color: Color.fromARGB(25, 0, 0, 255),
                    ),
                  ]
                : <Shadow>[
                    const Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(25, 0, 0, 0),
                    ),
                    const Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 5.0,
                      color: Color.fromARGB(25, 0, 0, 255),
                    ),
                  ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(TranslateHelper.msg_welcome_helper_thread,
              textAlign: TextAlign.center, style: AppTextStyle.H3_REGULAR()),
        ),
      ],
    );
  }
}
