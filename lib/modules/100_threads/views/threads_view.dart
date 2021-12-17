import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';

import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/colors.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:threadofon/modules/100_threads/controllers/threads_controller.dart';

class ThreadsView extends GetView<ThreadsController> {
  const ThreadsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(TranslateHelper.threads),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ChoiceThread(
                onTap: () {
                  Get.rootDelegate.toNamed(Routes.M_THREAD_TYPE);
                  // MThreadController.to.pageToDiam();
                },
                pathImage: ConstAssets.imageMThread,
                title:
                    '(${TranslateHelper.m_thread_abrv}) ${TranslateHelper.m_thread}',
                subTitle: TranslateHelper.m_thread_gost,
              ),
              ChoiceThread(
                onTap: () {
                  Get.rootDelegate.toNamed(Routes.M_THREAD_TYPE(TranslateHelper.m_thread_abrv));
                  // MThreadController.to.pageToDiam();
                },
                pathImage: ConstAssets.imageGThread,
                title:
                    '(${TranslateHelper.g_thread_abrv}) ${TranslateHelper.g_thread}',
                subTitle: TranslateHelper.g_thread_gost,
              ),
            ],
          ),
        ));
  }
}

class ChoiceThread extends StatelessWidget {
  const ChoiceThread({
    Key? key,
    required this.pathImage,
    required this.title,
    required this.onTap,
    required this.subTitle,
  }) : super(key: key);

  final String pathImage;
  final String title;
  final String subTitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    var scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    var primaryColor = Theme.of(context).primaryColor;
    var colorText =
        isDarkMode ? ConstColor.neutral_white : ConstColor.neutral_grey_800;

    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 10,
          
          margin: EdgeInsets.all(8),
          color: scaffoldBackgroundColor,
          child: Column(
 
            // mainAxisSize: MainAxisSize.max,
 
            children: [
              Container(
                
                height: 200.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: ConstColor.neutral_grey_400, width: 0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  pathImage,
                  color: colorText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.H3_BOLD(colorText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.LABEL_REGULAR(colorText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
