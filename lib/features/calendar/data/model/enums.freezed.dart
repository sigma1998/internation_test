// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enums.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Enums _$EnumsFromJson(Map<String, dynamic> json) {
  return _Enums.fromJson(json);
}

/// @nodoc
mixin _$Enums {
  int? get type => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnumsCopyWith<Enums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumsCopyWith<$Res> {
  factory $EnumsCopyWith(Enums value, $Res Function(Enums) then) =
      _$EnumsCopyWithImpl<$Res, Enums>;
  @useResult
  $Res call({int? type, String? color});
}

/// @nodoc
class _$EnumsCopyWithImpl<$Res, $Val extends Enums>
    implements $EnumsCopyWith<$Res> {
  _$EnumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnumsCopyWith<$Res> implements $EnumsCopyWith<$Res> {
  factory _$$_EnumsCopyWith(_$_Enums value, $Res Function(_$_Enums) then) =
      __$$_EnumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? type, String? color});
}

/// @nodoc
class __$$_EnumsCopyWithImpl<$Res> extends _$EnumsCopyWithImpl<$Res, _$_Enums>
    implements _$$_EnumsCopyWith<$Res> {
  __$$_EnumsCopyWithImpl(_$_Enums _value, $Res Function(_$_Enums) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Enums(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Enums implements _Enums {
  const _$_Enums({this.type, this.color});

  factory _$_Enums.fromJson(Map<String, dynamic> json) =>
      _$$_EnumsFromJson(json);

  @override
  final int? type;
  @override
  final String? color;

  @override
  String toString() {
    return 'Enums(type: $type, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Enums &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnumsCopyWith<_$_Enums> get copyWith =>
      __$$_EnumsCopyWithImpl<_$_Enums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnumsToJson(
      this,
    );
  }
}

abstract class _Enums implements Enums {
  const factory _Enums({final int? type, final String? color}) = _$_Enums;

  factory _Enums.fromJson(Map<String, dynamic> json) = _$_Enums.fromJson;

  @override
  int? get type;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_EnumsCopyWith<_$_Enums> get copyWith =>
      throw _privateConstructorUsedError;
}
