// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get iban => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'routing_number')
  String? get routingNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'swift_bic')
  String? get swiftBic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {int? id,
      String? uid,
      @JsonKey(name: 'account_number') String? accountNumber,
      String? iban,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'routing_number') String? routingNumber,
      @JsonKey(name: 'swift_bic') String? swiftBic});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? accountNumber = freezed,
    Object? iban = freezed,
    Object? bankName = freezed,
    Object? routingNumber = freezed,
    Object? swiftBic = freezed,
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
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      iban: freezed == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      routingNumber: freezed == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      swiftBic: freezed == swiftBic
          ? _value.swiftBic
          : swiftBic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$_BankCopyWith(_$_Bank value, $Res Function(_$_Bank) then) =
      __$$_BankCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uid,
      @JsonKey(name: 'account_number') String? accountNumber,
      String? iban,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'routing_number') String? routingNumber,
      @JsonKey(name: 'swift_bic') String? swiftBic});
}

/// @nodoc
class __$$_BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res, _$_Bank>
    implements _$$_BankCopyWith<$Res> {
  __$$_BankCopyWithImpl(_$_Bank _value, $Res Function(_$_Bank) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? accountNumber = freezed,
    Object? iban = freezed,
    Object? bankName = freezed,
    Object? routingNumber = freezed,
    Object? swiftBic = freezed,
  }) {
    return _then(_$_Bank(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      iban: freezed == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      routingNumber: freezed == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      swiftBic: freezed == swiftBic
          ? _value.swiftBic
          : swiftBic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bank implements _Bank {
  _$_Bank(
      {this.id,
      this.uid,
      @JsonKey(name: 'account_number') this.accountNumber,
      this.iban,
      @JsonKey(name: 'bank_name') this.bankName,
      @JsonKey(name: 'routing_number') this.routingNumber,
      @JsonKey(name: 'swift_bic') this.swiftBic});

  factory _$_Bank.fromJson(Map<String, dynamic> json) => _$$_BankFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  final String? iban;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'routing_number')
  final String? routingNumber;
  @override
  @JsonKey(name: 'swift_bic')
  final String? swiftBic;

  @override
  String toString() {
    return 'Bank(id: $id, uid: $uid, accountNumber: $accountNumber, iban: $iban, bankName: $bankName, routingNumber: $routingNumber, swiftBic: $swiftBic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bank &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.iban, iban) || other.iban == iban) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber) &&
            (identical(other.swiftBic, swiftBic) ||
                other.swiftBic == swiftBic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, accountNumber, iban,
      bankName, routingNumber, swiftBic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankCopyWith<_$_Bank> get copyWith =>
      __$$_BankCopyWithImpl<_$_Bank>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  factory _Bank(
      {final int? id,
      final String? uid,
      @JsonKey(name: 'account_number') final String? accountNumber,
      final String? iban,
      @JsonKey(name: 'bank_name') final String? bankName,
      @JsonKey(name: 'routing_number') final String? routingNumber,
      @JsonKey(name: 'swift_bic') final String? swiftBic}) = _$_Bank;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$_Bank.fromJson;

  @override
  int? get id;
  @override
  String? get uid;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  String? get iban;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'routing_number')
  String? get routingNumber;
  @override
  @JsonKey(name: 'swift_bic')
  String? get swiftBic;
  @override
  @JsonKey(ignore: true)
  _$$_BankCopyWith<_$_Bank> get copyWith => throw _privateConstructorUsedError;
}
