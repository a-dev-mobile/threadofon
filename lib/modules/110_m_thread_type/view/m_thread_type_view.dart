import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/colors.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/lang/translation_helper.dart';

import '../controllers/m_thread_type_controller.dart';

class MThreadTypeView extends GetWidget<MThreadTypeController> {
  const MThreadTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Метрическая резьба'),),
      body: Column(
        children: [
          Text(
            TranslateHelper.lets_get_started,
            style: AppTextStyle.H2(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              TranslateHelper.select_threads,
              style: AppTextStyle.H3_REGULAR(),
            ),
          ),
          Expanded(
            child: Obx(() => ChoiceTypeThread(
                  isActive: !controller.isBolt.value,
                  onTap: () {
                    controller.setNutsActive();
                    // MThreadController.to.pageToDiam();
                  },
                  pathSvg: ConstAssets.svgNuts,
                  text: TranslateHelper.internal_thread,
                )),
          ),
          Expanded(
            child: Obx(() => ChoiceTypeThread(
                  isActive: controller.isBolt.value,
                  onTap: () {
                    controller.setBoltActive();
                  },
                  pathSvg: ConstAssets.svgBolt,
                  text: TranslateHelper.external_thread,
                )),
          ),
        ],
      ),
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
