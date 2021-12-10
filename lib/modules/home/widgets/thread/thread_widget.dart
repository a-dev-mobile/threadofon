import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_controller.dart';

import '../../../../config/style.dart';
import '../../../../core/constants/colors.dart';
import 'data/thread_tab_data.dart';

class ThreadView extends GetView<ThreadController> {
  const ThreadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    int lastItem = controller.selectItem.value;

    return DefaultTabController(
      initialIndex: lastItem,
      length: threadTabData.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.border_bottom))
          ],
          title: Obx(() => Column(
                children: [
                  Text(
                    threadTabData[controller.selectItem.value].title,
                    style: AppTextStyle.H3(),
                  ),
                  Text(
                    threadTabData[controller.selectItem.value].gost,
                    style: AppTextStyle.LABEL_REGULAR(),
                  ),
                ],
              )),
          bottom: TabBar(
            onTap: (index) {
              controller.setLastItem(index: index);
            },
            indicatorColor: isDark
                ? ColorConstants.neutral_grey_200
                : ColorConstants.neutral_grey_800,
            labelStyle: AppTextStyle.BODY_SEMI_BOLD(),
            indicatorWeight: 3,
            labelColor: isDark
                ? ColorConstants.neutral_grey_200
                : ColorConstants.neutral_grey_800,
            tabs: threadTabData.map((e) => Tab(text: e.abrv)).toList(),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: threadTabData.map((e) => e.itemTab).toList(),
        ),
      ),
    );
  }
}
