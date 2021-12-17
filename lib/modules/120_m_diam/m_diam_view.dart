import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:threadofon/config/app_text_style.dart';
import 'package:thredofon_repository/thredofon_repository.dart';
import 'm_diam_controller.dart';

class MDiamWidget extends GetView<MDiamController> {
  const MDiamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: !controller.isLoad.value,
          child: ListView.builder(
              itemCount: controller.listModel.length,
              itemBuilder: (context, index) {
                return _MDiamListItem(
                  model: controller.listModel[index],
                );
              }),
        ));
  }
}

class _MDiamListItem extends GetView<MDiamController> {
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
