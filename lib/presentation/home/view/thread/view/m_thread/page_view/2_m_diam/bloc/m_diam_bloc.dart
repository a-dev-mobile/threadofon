// import 'dart:async';

// import 'package:equatable/equatable.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:threadofon/core/constants/enums.dart';
// import 'package:threadofon/core/constants/storage.dart';
// import 'package:threadofon/core/utils/app_log.dart';
// import 'package:threadofon/core/utils/app_storage.dart';
// import 'package:threadofon/core/utils/app_utils.dart';

// import 'package:threadofon/presentation/home/view/thread/view/m_thread/models/m_diam.dart';

// part 'm_diam_event.dart';
// part 'm_diam_state.dart';

// class MDiamBloc extends Bloc<MEvent, MState> {
//   MDiamBloc() : super(const MState()) {
//     on<MDiamFetched>(_onDiamFetched);
//   }

//   FutureOr<void> _onDiamFetched(
//       MDiamFetched event, Emitter<MState> emit) async {
//     try {
//       emit(state.copyWith(status: MDbStatus.loading));
//       final diams = await _fetchMDiams();

//       emit(state.copyWith(
//         status: MDbStatus.success,
//         diams: diams,
//       ));
//     } catch (e) {
//       logger.e(e);
//       emit(state.copyWith(status: MDbStatus.failure));
//     }
//   }
// }

// Future<List<String>> _fetchMDiams() async {
//   String pathDB = await AppStorage().getString(ConstStorage.keyPathDB);

//   var db = await openDatabase(pathDB);
//   List<Map> queryResult = await db.rawQuery('''
//  select [Range_1] as diam from  [isoNormal] WHERE diam is NOT NULL
//  UNION  
//  select [Range_2] as diam from [isoNormal] WHERE diam is NOT NULL
//  UNION 
//  select [Range_3] as diam from  [isoNormal] WHERE diam is NOT NULL
//  UNION 
//  select [Range_1] as diam from [isoSmail] WHERE diam is NOT NULL
//  UNION  
//  select [Range_2] as diam from  [isoSmail] WHERE diam is NOT NULL
// ''');

//   await db.close();

//   if (queryResult.isEmpty) throw Exception('error fetching mDiams');

//   List<String> diams = [];
//   double value = 0;
//   for (var item in queryResult) {
//     value = item['diam'] as double;
//     diams.add(AppUtilsNumber.getFormatNumber(value, 2));

//     // diams.add(item['diam'] as String);

//   }

//   return diams;
// }
