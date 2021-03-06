import 'package:freezed_annotation/freezed_annotation.dart';
part 'm_diams.g.dart';
part 'm_diams.freezed.dart';

@freezed
class MDiamModel with _$MDiams {
  factory MDiamModel({required String diam, @Default(false) bool isSelected}) =
      _MDiams;

  factory MDiamModel.fromJson(Map<String, dynamic> json) => _$MDiamsFromJson(json);
}
