// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_insurance_number')
  String? get socialInsuranceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  Employment? get employment => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card')
  CreditCard? get creditCard => throw _privateConstructorUsedError;
  Subscription? get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? password,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? email,
      String? avatar,
      String? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'social_insurance_number') String? socialInsuranceNumber,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      Employment? employment,
      Address? address,
      @JsonKey(name: 'credit_card') CreditCard? creditCard,
      Subscription? subscription});

  $EmploymentCopyWith<$Res>? get employment;
  $AddressCopyWith<$Res>? get address;
  $CreditCardCopyWith<$Res>? get creditCard;
  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? socialInsuranceNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? employment = freezed,
    Object? address = freezed,
    Object? creditCard = freezed,
    Object? subscription = freezed,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      socialInsuranceNumber: freezed == socialInsuranceNumber
          ? _value.socialInsuranceNumber
          : socialInsuranceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      creditCard: freezed == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmploymentCopyWith<$Res>? get employment {
    if (_value.employment == null) {
      return null;
    }

    return $EmploymentCopyWith<$Res>(_value.employment!, (value) {
      return _then(_value.copyWith(employment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCardCopyWith<$Res>? get creditCard {
    if (_value.creditCard == null) {
      return null;
    }

    return $CreditCardCopyWith<$Res>(_value.creditCard!, (value) {
      return _then(_value.copyWith(creditCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uid,
      String? password,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? email,
      String? avatar,
      String? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'social_insurance_number') String? socialInsuranceNumber,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      Employment? employment,
      Address? address,
      @JsonKey(name: 'credit_card') CreditCard? creditCard,
      Subscription? subscription});

  @override
  $EmploymentCopyWith<$Res>? get employment;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CreditCardCopyWith<$Res>? get creditCard;
  @override
  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? socialInsuranceNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? employment = freezed,
    Object? address = freezed,
    Object? creditCard = freezed,
    Object? subscription = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      socialInsuranceNumber: freezed == socialInsuranceNumber
          ? _value.socialInsuranceNumber
          : socialInsuranceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      employment: freezed == employment
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as Employment?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      creditCard: freezed == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {this.id,
      this.uid,
      this.password,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      this.email,
      this.avatar,
      this.gender,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'social_insurance_number') this.socialInsuranceNumber,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.employment,
      this.address,
      @JsonKey(name: 'credit_card') this.creditCard,
      this.subscription});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  final String? uid;
  @override
  final String? password;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'social_insurance_number')
  final String? socialInsuranceNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  final Employment? employment;
  @override
  final Address? address;
  @override
  @JsonKey(name: 'credit_card')
  final CreditCard? creditCard;
  @override
  final Subscription? subscription;

  @override
  String toString() {
    return 'User(id: $id, uid: $uid, password: $password, firstName: $firstName, lastName: $lastName, username: $username, email: $email, avatar: $avatar, gender: $gender, phoneNumber: $phoneNumber, socialInsuranceNumber: $socialInsuranceNumber, dateOfBirth: $dateOfBirth, employment: $employment, address: $address, creditCard: $creditCard, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.socialInsuranceNumber, socialInsuranceNumber) ||
                other.socialInsuranceNumber == socialInsuranceNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.employment, employment) ||
                other.employment == employment) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uid,
      password,
      firstName,
      lastName,
      username,
      email,
      avatar,
      gender,
      phoneNumber,
      socialInsuranceNumber,
      dateOfBirth,
      employment,
      address,
      creditCard,
      subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final int? id,
      final String? uid,
      final String? password,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? username,
      final String? email,
      final String? avatar,
      final String? gender,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'social_insurance_number')
      final String? socialInsuranceNumber,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      final Employment? employment,
      final Address? address,
      @JsonKey(name: 'credit_card') final CreditCard? creditCard,
      final Subscription? subscription}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get uid;
  @override
  String? get password;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'social_insurance_number')
  String? get socialInsuranceNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  Employment? get employment;
  @override
  Address? get address;
  @override
  @JsonKey(name: 'credit_card')
  CreditCard? get creditCard;
  @override
  Subscription? get subscription;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
