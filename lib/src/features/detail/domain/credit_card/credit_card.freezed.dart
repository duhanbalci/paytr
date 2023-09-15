// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCard _$CreditCardFromJson(Map<String, dynamic> json) {
  return _CreditCard.fromJson(json);
}

/// @nodoc
mixin _$CreditCard {
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card_number')
  String? get creditCardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card_expiry_date')
  String? get creditCardExpiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card_type')
  String? get creditCardType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardCopyWith<CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res, CreditCard>;
  @useResult
  $Res call(
      {int? id,
      String? uid,
      @JsonKey(name: 'credit_card_number') String? creditCardNumber,
      @JsonKey(name: 'credit_card_expiry_date') String? creditCardExpiryDate,
      @JsonKey(name: 'credit_card_type') String? creditCardType});
}

/// @nodoc
class _$CreditCardCopyWithImpl<$Res, $Val extends CreditCard>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? creditCardNumber = freezed,
    Object? creditCardExpiryDate = freezed,
    Object? creditCardType = freezed,
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
      creditCardNumber: freezed == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardExpiryDate: freezed == creditCardExpiryDate
          ? _value.creditCardExpiryDate
          : creditCardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardType: freezed == creditCardType
          ? _value.creditCardType
          : creditCardType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uid,
      @JsonKey(name: 'credit_card_number') String? creditCardNumber,
      @JsonKey(name: 'credit_card_expiry_date') String? creditCardExpiryDate,
      @JsonKey(name: 'credit_card_type') String? creditCardType});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? creditCardNumber = freezed,
    Object? creditCardExpiryDate = freezed,
    Object? creditCardType = freezed,
  }) {
    return _then(_$_CreditCard(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardNumber: freezed == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardExpiryDate: freezed == creditCardExpiryDate
          ? _value.creditCardExpiryDate
          : creditCardExpiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardType: freezed == creditCardType
          ? _value.creditCardType
          : creditCardType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditCard implements _CreditCard {
  _$_CreditCard(
      {this.id,
      this.uid,
      @JsonKey(name: 'credit_card_number') this.creditCardNumber,
      @JsonKey(name: 'credit_card_expiry_date') this.creditCardExpiryDate,
      @JsonKey(name: 'credit_card_type') this.creditCardType});

  factory _$_CreditCard.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  @JsonKey(name: 'credit_card_number')
  final String? creditCardNumber;
  @override
  @JsonKey(name: 'credit_card_expiry_date')
  final String? creditCardExpiryDate;
  @override
  @JsonKey(name: 'credit_card_type')
  final String? creditCardType;

  @override
  String toString() {
    return 'CreditCard(id: $id, uid: $uid, creditCardNumber: $creditCardNumber, creditCardExpiryDate: $creditCardExpiryDate, creditCardType: $creditCardType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.creditCardNumber, creditCardNumber) ||
                other.creditCardNumber == creditCardNumber) &&
            (identical(other.creditCardExpiryDate, creditCardExpiryDate) ||
                other.creditCardExpiryDate == creditCardExpiryDate) &&
            (identical(other.creditCardType, creditCardType) ||
                other.creditCardType == creditCardType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, creditCardNumber,
      creditCardExpiryDate, creditCardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardToJson(
      this,
    );
  }
}

abstract class _CreditCard implements CreditCard {
  factory _CreditCard(
          {final int? id,
          final String? uid,
          @JsonKey(name: 'credit_card_number') final String? creditCardNumber,
          @JsonKey(name: 'credit_card_expiry_date')
          final String? creditCardExpiryDate,
          @JsonKey(name: 'credit_card_type') final String? creditCardType}) =
      _$_CreditCard;

  factory _CreditCard.fromJson(Map<String, dynamic> json) =
      _$_CreditCard.fromJson;

  @override
  int? get id;
  @override
  String? get uid;
  @override
  @JsonKey(name: 'credit_card_number')
  String? get creditCardNumber;
  @override
  @JsonKey(name: 'credit_card_expiry_date')
  String? get creditCardExpiryDate;
  @override
  @JsonKey(name: 'credit_card_type')
  String? get creditCardType;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}
