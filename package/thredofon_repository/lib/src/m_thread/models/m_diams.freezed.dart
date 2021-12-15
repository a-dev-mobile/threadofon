// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'm_diams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MDiamModel _$MDiamsFromJson(Map<String, dynamic> json) {
  return _MDiams.fromJson(json);
}

/// @nodoc
class _$MDiamsTearOff {
  const _$MDiamsTearOff();

  _MDiams call({required String diam, bool isSelected = false}) {
    return _MDiams(
      diam: diam,
      isSelected: isSelected,
    );
  }

  MDiamModel fromJson(Map<String, Object?> json) {
    return MDiamModel.fromJson(json);
  }
}

/// @nodoc
const $MDiams = _$MDiamsTearOff();

/// @nodoc
mixin _$MDiams {
  String get diam => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MDiamsCopyWith<MDiamModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MDiamsCopyWith<$Res> {
  factory $MDiamsCopyWith(MDiamModel value, $Res Function(MDiamModel) then) =
      _$MDiamsCopyWithImpl<$Res>;
  $Res call({String diam, bool isSelected});
}

/// @nodoc
class _$MDiamsCopyWithImpl<$Res> implements $MDiamsCopyWith<$Res> {
  _$MDiamsCopyWithImpl(this._value, this._then);

  final MDiamModel _value;
  // ignore: unused_field
  final $Res Function(MDiamModel) _then;

  @override
  $Res call({
    Object? diam = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      diam: diam == freezed
          ? _value.diam
          : diam // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MDiamsCopyWith<$Res> implements $MDiamsCopyWith<$Res> {
  factory _$MDiamsCopyWith(_MDiams value, $Res Function(_MDiams) then) =
      __$MDiamsCopyWithImpl<$Res>;
  @override
  $Res call({String diam, bool isSelected});
}

/// @nodoc
class __$MDiamsCopyWithImpl<$Res> extends _$MDiamsCopyWithImpl<$Res>
    implements _$MDiamsCopyWith<$Res> {
  __$MDiamsCopyWithImpl(_MDiams _value, $Res Function(_MDiams) _then)
      : super(_value, (v) => _then(v as _MDiams));

  @override
  _MDiams get _value => super._value as _MDiams;

  @override
  $Res call({
    Object? diam = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_MDiams(
      diam: diam == freezed
          ? _value.diam
          : diam // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MDiams implements _MDiams {
  _$_MDiams({required this.diam, this.isSelected = false});

  factory _$_MDiams.fromJson(Map<String, dynamic> json) =>
      _$$_MDiamsFromJson(json);

  @override
  final String diam;
  @JsonKey()
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'MDiams(diam: $diam, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MDiams &&
            const DeepCollectionEquality().equals(other.diam, diam) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(diam),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$MDiamsCopyWith<_MDiams> get copyWith =>
      __$MDiamsCopyWithImpl<_MDiams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MDiamsToJson(this);
  }
}

abstract class _MDiams implements MDiamModel {
  factory _MDiams({required String diam, bool isSelected}) = _$_MDiams;

  factory _MDiams.fromJson(Map<String, dynamic> json) = _$_MDiams.fromJson;

  @override
  String get diam;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$MDiamsCopyWith<_MDiams> get copyWith => throw _privateConstructorUsedError;
}
