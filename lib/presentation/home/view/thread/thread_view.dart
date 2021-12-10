import 'package:flutter/material.dart';
import 'package:threadofon/presentation/home/view/thread/cubit/last_thread_select_cubit.dart';

import '../../../../config/style.dart';
import '../../../../core/constants/colors.dart';
import 'data/thread_tab_data.dart';

class ThreadView extends StatelessWidget {
  const ThreadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Thread();
    // BlocProvider(
    // create: (context) => LastThreadCubit(),
    // child: ,
  }
}

class Thread extends StatelessWidget {
  const Thread({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabs = threadTabs;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

// get state last thread
    // int initialIndexState =     BlocProvider.of<LastThreadCubit>(context).state;
    int initialIndexState = 0;

    return Scaffold();
  }
}
  // DefaultTabController(
  // initialIndex: initialIndexState,
  // length: threadTabs.length,
  // child:;);;
  // appBar: AppBar(
  //   actions: [
  //     IconButton(onPressed: () {}, icon: const Icon(Icons.border_bottom))
  //   ];)
  //   // bloc for last use thread
//           title: BlocBuilder<LastThreadCubit, int>(
//             builder: (context, idThread) {
//               return Column(
//                 children: [
//                   Text(
//                     tabs[idThread].title,
//                     style: AppTextStyle.H3(),
//                   ),
//                   Text(
//                     tabs[idThread].gost,
//                     style: AppTextStyle.LABEL_REGULAR(),
//                   ),
//                 ],
//               );
//             },
//           ),
//           bottom: TabBar(
//             onTap: (index) {
//               context.read<LastThreadCubit>().toggleThread(idThreadTab: index);
//             },
//             indicatorColor: isDark
//                 ? ColorConstants.neutral_grey_200
//                 : ColorConstants.neutral_grey_800,
//             labelStyle: AppTextStyle.BODY_SEMI_BOLD(),
//             indicatorWeight: 3,
//             labelColor: isDark
//                 ? ColorConstants.neutral_grey_200
//                 : ColorConstants.neutral_grey_800,
//             tabs: threadTabs.map((e) => Tab(text: e.abrv)).toList(),
//           ),
//         ),
//         body: TabBarView(
//           physics: const NeverScrollableScrollPhysics(),
//           children: tabs.map((e) => e.itemTab).toList(),
//         ),
//       ),
//     );
//   }
// }
