// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCard _$$_CreditCardFromJson(Map<String, dynamic> json) =>
    _$_CreditCard(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      creditCardNumber: json['credit_card_number'] as String?,
      creditCardExpiryDate: json['credit_card_expiry_date'] as String?,
      creditCardType: json['credit_card_type'] as String?,
    );

Map<String, dynamic> _$$_CreditCardToJson(_$_CreditCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'credit_card_number': instance.creditCardNumber,
      'credit_card_expiry_date': instance.creditCardExpiryDate,
      'credit_card_type': instance.creditCardType,
    };
