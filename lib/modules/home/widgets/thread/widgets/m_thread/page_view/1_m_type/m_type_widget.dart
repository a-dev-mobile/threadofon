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
import 'package:threadofon/modules/home/widgets/thread/widgets/m_thread/page_view/1_m_type/m_type_controller.dart';

class MTypeWidget extends GetView<MTypeController> {
  const MTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
            child: SegmentControlsWidget(
          pathSvg: ConstAssets.svgBolt, onTap: () {  }, text: 
        )),
        // Expanded(
        //   child: SegmentControlsWidget(
        //     pathSvg: ConstAssets.svgNuts,
        //     isActive: true,
        //   ),
        // ),

        // Obx(() {
        //   return ChoiceChip(
        //     label: const Text('NUTS'),
        //     selected: controller.isNuts.value,
        //     onSelected: (select) {
        //       if (select) controller.setNutsActive();
        //     },
        //   );
        // }),
      ],
    );
  }
}

class SegmentControlsWidget extends StatelessWidget {
  const SegmentControlsWidget({
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
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16.w),
      color: isActive ? primaryColor : scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: InkWell(
          onTap: () => onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(pathSvg,
                      fit: BoxFit.contain, color: colorText),
                ),
              ),
              Text(
                'NUTS',
                textAlign: TextAlign.center,
                style: AppTextStyle.LABEL_SEMI_BOLD(colorText),
              )
            ],
          ),
        ),
      ),
    );
  }
}
