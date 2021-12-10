import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:threadofon/app/app.dart';
import 'package:threadofon/core/widgets/button/btn_large_secondary.dart';
import 'package:threadofon/modules/home/widgets/thread/widgets/m_thread/page_view/1_m_type/m_type_controller.dart';

class MTypeWidget extends GetView<MTypeController> {
  const MTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return ChoiceChip(
                label: const Text('BOLT'),
                selected: controller.isBolt.value,
                onSelected: (select) {
                  if (select) controller.setBoltActive();
                },
              );
            }),
            Obx(() {
              return ChoiceChip(
                label: const Text('NUTS'),
                selected: controller.isNuts.value,
                onSelected: (select) {
                  if (select) controller.setNutsActive();
                },
              );
            }),
          ],
        ),
      ],
    );
  }
}
