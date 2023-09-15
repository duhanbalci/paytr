// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appliance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appliance _$ApplianceFromJson(Map<String, dynamic> json) {
  return _Appliance.fromJson(json);
}

/// @nodoc
mixin _$Appliance {
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get equipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplianceCopyWith<Appliance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplianceCopyWith<$Res> {
  factory $ApplianceCopyWith(Appliance value, $Res Function(Appliance) then) =
      _$ApplianceCopyWithImpl<$Res, Appliance>;
  @useResult
  $Res call({int? id, String? uid, String? brand, String? equipment});
}

/// @nodoc
class _$ApplianceCopyWithImpl<$Res, $Val extends Appliance>
    implements $ApplianceCopyWith<$Res> {
  _$ApplianceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? brand = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplianceCopyWith<$Res> implements $ApplianceCopyWith<$Res> {
  factory _$$_ApplianceCopyWith(
          _$_Appliance value, $Res Function(_$_Appliance) then) =
      __$$_ApplianceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? uid, String? brand, String? equipment});
}

/// @nodoc
class __$$_ApplianceCopyWithImpl<$Res>
    extends _$ApplianceCopyWithImpl<$Res, _$_Appliance>
    implements _$$_ApplianceCopyWith<$Res> {
  __$$_ApplianceCopyWithImpl(
      _$_Appliance _value, $Res Function(_$_Appliance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? brand = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_$_Appliance(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Appliance implements _Appliance {
  _$_Appliance({this.id, this.uid, this.brand, this.equipment});

  factory _$_Appliance.fromJson(Map<String, dynamic> json) =>
      _$$_ApplianceFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  final String? brand;
  @override
  final String? equipment;

  @override
  String toString() {
    return 'Appliance(id: $id, uid: $uid, brand: $brand, equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appliance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, brand, equipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplianceCopyWith<_$_Appliance> get copyWith =>
      __$$_ApplianceCopyWithImpl<_$_Appliance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplianceToJson(
      this,
    );
  }
}

abstract class _Appliance implements Appliance {
  factory _Appliance(
      {final int? id,
      final String? uid,
      final String? brand,
      final String? equipment}) = _$_Appliance;

  factory _Appliance.fromJson(Map<String, dynamic> json) =
      _$_Appliance.fromJson;

  @override
  int? get id;
  @override
  String? get uid;
  @override
  String? get brand;
  @override
  String? get equipment;
  @override
  @JsonKey(ignore: true)
  _$$_ApplianceCopyWith<_$_Appliance> get copyWith =>
      throw _privateConstructorUsedError;
}
