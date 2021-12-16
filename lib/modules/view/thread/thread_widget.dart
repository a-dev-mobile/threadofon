// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../config/app_text_style.dart';
// import '../../../../core/constants/colors.dart';
// import 'data/thread_tab_data.dart';
// import 'thread_controller.dart';

// class ThreadView extends GetView<ThreadController> {
//   const ThreadView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool isDark = Theme.of(context).brightness == Brightness.dark;
//     int lastItem = controller.selectItem.value;

//     return DefaultTabController(
//       initialIndex: lastItem,
//       length: threadTabData.length,
//       child: Scaffold(
//         appBar: AppBar(
//           actions: [
//             IconButton(onPressed: () {}, icon: const Icon(Icons.border_bottom))
//           ],
//           title: Obx(() => Column(
//                 children: [
//                   Text(
//                     threadTabData[controller.selectItem.value].title,
//                     style: AppTextStyle.H3_BOLD(),
//                   ),
//                   Text(
//                     threadTabData[controller.selectItem.value].gost,
//                     style: AppTextStyle.LABEL_REGULAR(),
//                   ),
//                 ],
//               )),
//           bottom: TabBar(
//             onTap: (index) {
//               controller.setLastItem(index: index);
//             },
//             indicatorColor: isDark
//                 ? ConstColor.neutral_grey_200
//                 : ConstColor.neutral_grey_800,
//             labelStyle: AppTextStyle.BODY_SEMI_BOLD(),
//             indicatorWeight: 3,
//             labelColor: isDark
//                 ? ConstColor.neutral_grey_200
//                 : ConstColor.neutral_grey_800,
//             tabs: threadTabData.map((e) => Tab(text: e.abrv)).toList(),
//           ),
//         ),
//         body: TabBarView(
//           physics: const NeverScrollableScrollPhysics(),
//           children: threadTabData.map((e) => e.itemTab).toList(),
//         ),
//       ),
//     );
//   }
// }
