// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BloodType _$BloodTypeFromJson(Map<String, dynamic> json) {
  return _BloodType.fromJson(json);
}

/// @nodoc
mixin _$BloodType {
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'rh_factor')
  String? get rhFactor => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodTypeCopyWith<BloodType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodTypeCopyWith<$Res> {
  factory $BloodTypeCopyWith(BloodType value, $Res Function(BloodType) then) =
      _$BloodTypeCopyWithImpl<$Res, BloodType>;
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? type,
      @JsonKey(name: 'rh_factor') String? rhFactor,
      String? group});
}

/// @nodoc
class _$BloodTypeCopyWithImpl<$Res, $Val extends BloodType>
    implements $BloodTypeCopyWith<$Res> {
  _$BloodTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? type = freezed,
    Object? rhFactor = freezed,
    Object? group = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rhFactor: freezed == rhFactor
          ? _value.rhFactor
          : rhFactor // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodTypeCopyWith<$Res> implements $BloodTypeCopyWith<$Res> {
  factory _$$_BloodTypeCopyWith(
          _$_BloodType value, $Res Function(_$_BloodType) then) =
      __$$_BloodTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? type,
      @JsonKey(name: 'rh_factor') String? rhFactor,
      String? group});
}

/// @nodoc
class __$$_BloodTypeCopyWithImpl<$Res>
    extends _$BloodTypeCopyWithImpl<$Res, _$_BloodType>
    implements _$$_BloodTypeCopyWith<$Res> {
  __$$_BloodTypeCopyWithImpl(
      _$_BloodType _value, $Res Function(_$_BloodType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? type = freezed,
    Object? rhFactor = freezed,
    Object? group = freezed,
  }) {
    return _then(_$_BloodType(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      rhFactor: freezed == rhFactor
          ? _value.rhFactor
          : rhFactor // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodType implements _BloodType {
  _$_BloodType(
      {this.id,
      this.uid,
      this.type,
      @JsonKey(name: 'rh_factor') this.rhFactor,
      this.group});

  factory _$_BloodType.fromJson(Map<String, dynamic> json) =>
      _$$_BloodTypeFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  final String? type;
  @override
  @JsonKey(name: 'rh_factor')
  final String? rhFactor;
  @override
  final String? group;

  @override
  String toString() {
    return 'BloodType(id: $id, uid: $uid, type: $type, rhFactor: $rhFactor, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rhFactor, rhFactor) ||
                other.rhFactor == rhFactor) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, type, rhFactor, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodTypeCopyWith<_$_BloodType> get copyWith =>
      __$$_BloodTypeCopyWithImpl<_$_BloodType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodTypeToJson(
      this,
    );
  }
}

abstract class _BloodType implements BloodType {
  factory _BloodType(
      {final int? id,
      final String? uid,
      final String? type,
      @JsonKey(name: 'rh_factor') final String? rhFactor,
      final String? group}) = _$_BloodType;

  factory _BloodType.fromJson(Map<String, dynamic> json) =
      _$_BloodType.fromJson;

  @override
  int? get id;
  @override
  String? get uid;
  @override
  String? get type;
  @override
  @JsonKey(name: 'rh_factor')
  String? get rhFactor;
  @override
  String? get group;
  @override
  @JsonKey(ignore: true)
  _$$_BloodTypeCopyWith<_$_BloodType> get copyWith =>
      throw _privateConstructorUsedError;
}
