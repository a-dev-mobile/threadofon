import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:threadofon/config/style.dart';
import 'package:threadofon/core/utils/app_log.dart';

import 'package:threadofon/modules/home/widgets/thread/widgets/m_thread/page_view/2_m_diam/m_diam_controller.dart';

class MDiamWidget extends GetView<MDiamController> {
  const MDiamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
      visible: !controller.isLoad.value,
      child: ListView.builder(
          itemCount: controller.listDiam.length,
          itemBuilder: (context, index) {
            return _MDiamListItem(
              diam: controller.listDiam[index],
            );
          }),
    ));
  }
}

class _MDiamListItem extends StatelessWidget {
  const _MDiamListItem({Key? key, required this.diam}) : super(key: key);

  final String diam;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text('M', style: AppTextStyle.LABEL_EXTRA_BOLD()),
        title: Text(diam),
        onTap: () => log.i(diam),
        // dense: true,
      ),
    );
  }
}
