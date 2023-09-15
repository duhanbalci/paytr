// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      plan: json['plan'] as String?,
      status: json['status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      term: json['term'] as String?,
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'status': instance.status,
      'payment_method': instance.paymentMethod,
      'term': instance.term,
    };
