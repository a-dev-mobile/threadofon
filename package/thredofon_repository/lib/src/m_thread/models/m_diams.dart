import 'package:freezed_annotation/freezed_annotation.dart';
part 'm_diams.g.dart';
part 'm_diams.freezed.dart';

@freezed
class MDiams with _$MDiams {
  factory MDiams({required String diam, @Default(false) bool isSelected}) =
      _MDiams;

  factory MDiams.fromJson(Map<String, dynamic> json) => _$MDiamsFromJson(json);
}
