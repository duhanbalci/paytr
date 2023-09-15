// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      password: json['password'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      gender: json['gender'] as String?,
      phoneNumber: json['phone_number'] as String?,
      socialInsuranceNumber: json['social_insurance_number'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      employment: json['employment'] == null
          ? null
          : Employment.fromJson(json['employment'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      creditCard: json['credit_card'] == null
          ? null
          : CreditCard.fromJson(json['credit_card'] as Map<String, dynamic>),
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'password': instance.password,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'avatar': instance.avatar,
      'gender': instance.gender,
      'phone_number': instance.phoneNumber,
      'social_insurance_number': instance.socialInsuranceNumber,
      'date_of_birth': instance.dateOfBirth,
      'employment': instance.employment,
      'address': instance.address,
      'credit_card': instance.creditCard,
      'subscription': instance.subscription,
    };
