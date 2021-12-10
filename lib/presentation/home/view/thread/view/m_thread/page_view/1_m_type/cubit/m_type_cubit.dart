// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';

// class MTypeCubit extends HydratedCubit<bool> {
//   MTypeCubit() : super(false);

//   void isBoltActive() {
//     emit(true);
//   }
//   void isNutsActive() {
//     emit(false);
//   }
//   @override
//   bool? fromJson(Map<String, dynamic> json) {
//     return json['isMBolt'];
//   }

//   @override
//   Map<String, dynamic>? toJson(bool state) {
//     return {'isMBolt': state};
//   }
// }
