// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:threadofon/core/constants/common.dart';
// import 'package:threadofon/core/constants/enums.dart';
// import 'package:threadofon/core/constants/storage.dart';
// import 'package:threadofon/core/utils/app_log.dart';
// import 'package:threadofon/core/utils/app_storage.dart';

// part 'db_copy_state.dart';
// part 'db_copy_cubit.freezed.dart';
// part 'db_copy_cubit.g.dart';

// class DbCopyCubit extends HydratedCubit<DbCopyState> {
//   DbCopyCubit() : super(DbCopyState(status: DbCopyStatus.initial));

//   Future<void> copyDBToLocal() async {
//     // emit(state.copyWith(status: DbStatus.initial));
//     await delay();
//     if (state.status == DbCopyStatus.success) return;

//     emit(state.copyWith(status: DbCopyStatus.loading));
//     // ====================
//     await delay();

//     String pathFrom = 'assets/db/';
//     String nameDB = 'thread.db';

//     try {
//       ByteData data = await rootBundle.load('$pathFrom$nameDB');
//       String dir = (await getApplicationSupportDirectory()).path;

//       String pathTo = '$dir/$nameDB';

//       final buffer = data.buffer;
//       File(pathTo).writeAsBytes(
//           buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));

//       // ====================

//       //save patch DB
//       AppStorage().setString(ConstStorage.keyPathDB, pathTo + '/');
//       await delay();

//       emit(state.copyWith(status: DbCopyStatus.success));
//       log.w(state.status);
//     } catch (e) {
//       // ====================
//       await delay();

//       emit(state.copyWith(status: DbCopyStatus.failure));

//       logger.e(e);
//     }
//     log.w(state.status);
//     log.i(' end copy DB');
//   }

//   Future<void> delay() async {
//     log.w('start ${state.status}');
//     if (ConstCommon.isDebug) {
//       await Future.delayed(const Duration(seconds: 5), () {});
//     }
//     log.w('end ${state.status}');
//   }

//   @override
//   DbCopyState? fromJson(Map<String, dynamic> json) {
//     return DbCopyState.fromJson(json);
//   }

//   @override
//   Map<String, dynamic>? toJson(DbCopyState state) {
//     return state.toJson();
//   }
// }
