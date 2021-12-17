import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:threadofon/config/app_text_style.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/lang/translation_helper.dart';
import 'package:thredofon_repository/thredofon_repository.dart';
import '../controllers/m_thread_diam_controller.dart';

class MThreadDiamView extends GetWidget<MThreadDiamController> {
  const MThreadDiamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ConstAssets.svgBolt,
                height: 20.h,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
              SizedBox(width: 12.h,),
              Text(TranslateHelper.m_thread_abrv),
            ],
          ),
        ),
        body: Obx(() => Visibility(
              visible: !controller.isLoad.value,
              child: ListView.builder(
                  itemCount: controller.listModel.length,
                  itemBuilder: (context, index) {
                    return _MDiamListItem(
                      model: controller.listModel[index],
                    );
                  }),
            )));
  }
}

//     return Obx(() => Visibility(
//           visible: !controller.isLoad.value,
//           child: ListView.builder(
//               itemCount: controller.listModel.length,
//               itemBuilder: (context, index) {
//                 return _MDiamListItem(
//                   model: controller.listModel[index],
//                 );
//               }),
//         ));
//   }
// }

class _MDiamListItem extends GetView<MThreadDiamController> {
  const _MDiamListItem({Key? key, required this.model}) : super(key: key);

  final MDiamModel model;

  @override
  Widget build(BuildContext context) {
    var color;
    if (model.isSelected) color = Colors.red;
    return Material(
      child: ListTile(
        tileColor: color,
        leading: Text('M', style: AppTextStyle.LABEL_EXTRA_BOLD()),
        title: Text(model.diam),
        onTap: () => controller.selectedDiameter(model),
        // dense: true,
      ),
    );
  }
}
