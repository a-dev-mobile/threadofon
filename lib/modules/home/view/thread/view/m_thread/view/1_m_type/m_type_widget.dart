import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:threadofon/app/app.dart';
import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/colors.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/core/utils/app_log.dart';
import 'package:threadofon/core/widgets/button/btn_large_secondary.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:threadofon/modules/home/view/thread/view/m_thread/m_thread_controller.dart';
import 'm_type_controller.dart';

class MTypeWidget extends GetView<MTypeController> {
  const MTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.lets_get_started,
          style: AppTextStyle.H2(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            AppLocalizations.of(context)!.select_type_thread,
            style: AppTextStyle.H3_REGULAR(),
          ),
        ),
        Expanded(
          child: Obx(() => ChoiceTypeThread(
                isActive: !controller.isBolt.value,
                onTap: () {
                  controller.setNutsActive();
                  MThreadController.to.pageToDiam();
                },
                pathSvg: ConstAssets.svgNuts,
                text: AppLocalizations.of(context)!.internal_thread,
              )),
        ),
        Expanded(
          child: Obx(() => ChoiceTypeThread(
                isActive: controller.isBolt.value,
                onTap: () {
                  controller.setBoltActive();
                },
                pathSvg: ConstAssets.svgBolt,
                text: AppLocalizations.of(context)!.external_thread,
              )),
        ),
      ],
    );
  }
}

class ChoiceTypeThread extends StatelessWidget {
  const ChoiceTypeThread({
    Key? key,
    this.isActive = false,
    required this.pathSvg,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String pathSvg;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    var scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    var primaryColor = Theme.of(context).primaryColor;
    var secondColor = isActive ? primaryColor : scaffoldBackgroundColor;
    var colorText = isActive
        ? isDarkMode
            ? ConstColor.neutral_grey_800
            : ConstColor.neutral_white
        : Theme.of(context).textTheme.bodyText1!.color;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 10,
        margin: EdgeInsets.all(16.w),
        color: isActive ? primaryColor : scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              pathSvg,
              fit: BoxFit.contain,
              color: colorText,
              height: 120.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text.toUpperCase(),
                textAlign: TextAlign.center,
                style: AppTextStyle.LABEL_SEMI_BOLD(colorText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
