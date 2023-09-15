// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bank _$$_BankFromJson(Map<String, dynamic> json) => _$_Bank(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      accountNumber: json['account_number'] as String?,
      iban: json['iban'] as String?,
      bankName: json['bank_name'] as String?,
      routingNumber: json['routing_number'] as String?,
      swiftBic: json['swift_bic'] as String?,
    );

Map<String, dynamic> _$$_BankToJson(_$_Bank instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'account_number': instance.accountNumber,
      'iban': instance.iban,
      'bank_name': instance.bankName,
      'routing_number': instance.routingNumber,
      'swift_bic': instance.swiftBic,
    };
