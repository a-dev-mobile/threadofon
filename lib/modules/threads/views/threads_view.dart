import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';

import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/colors.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:threadofon/modules/threads/controllers/threads_controller.dart';

class ThreadsView extends GetView<ThreadsController> {
  const ThreadsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Резьбы'),
        ),
        body: Column(
          children: [
            ChoiceThread(
              onTap: () {
                Get.rootDelegate.toNamed(Routes.M_THREAD_TYPE);
                // MThreadController.to.pageToDiam();
              },
              pathImage: ConstAssets.imageMThread,
              text: TranslateHelper.internal_thread,
            ),
          ],
        ));
  }
}

class ChoiceThread extends StatelessWidget {
  const ChoiceThread({
    Key? key,
    required this.pathImage,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String pathImage;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    var scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    var primaryColor = Theme.of(context).primaryColor;
    var colorText =
        isDarkMode ? ConstColor.neutral_white : ConstColor.neutral_grey_800;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 10,
        margin: EdgeInsets.all(16.w),
        color: scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              pathImage,
              fit: BoxFit.contain,
              color: colorText,
              height: 200.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text.toUpperCase(),
                textAlign: TextAlign.center,
                style: AppTextStyle.H3_BOLD(colorText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
