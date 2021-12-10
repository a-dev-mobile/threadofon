// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:threadofon/config/style.dart';
// import 'package:threadofon/core/constants/enums.dart';
// import 'package:threadofon/core/utils/app_log.dart';

// import 'package:threadofon/presentation/error/error_screen.dart';
// import 'package:threadofon/presentation/home/view/thread/view/m_thread/models/m_diam.dart';

// import 'bloc/m_diam_bloc.dart';

// class MDiamWidget extends StatelessWidget {
//   const MDiamWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MDiamBloc, MState>(
//       builder: (context, state) {
//         switch (state.status) {
//           case MDbStatus.initial:
//           case MDbStatus.loading:
//             return const Center(child: CircularProgressIndicator());
//           case MDbStatus.failure:
//             return const ErrorScreen(msg: 'failed to fetch diams');
//           case MDbStatus.success:
//             if (state.diams.isEmpty) {
//               return const ErrorScreen(msg: 'no diams');
//             }
//             return ListView.builder(
//                 itemCount: state.diams.length,
//                 itemBuilder: (context, index) {
//                   return _MDiamListItem(
//                     diam: state.diams[index],
//                   );
//                 });
//         }
//       },
//     );
//   }
// }

// class _MDiamListItem extends StatelessWidget {
//   const _MDiamListItem({Key? key, required this.diam}) : super(key: key);

//   final String diam;

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return Material(
//       child: ListTile(
//         leading: Text('M', style: AppTextStyle.LABEL_EXTRA_BOLD()),
//         title: Text(diam),
//         onTap: () => log.i(diam),
//         // dense: true,
//       ),
//     );
//   }
// }
