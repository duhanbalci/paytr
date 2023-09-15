// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BloodType _$$_BloodTypeFromJson(Map<String, dynamic> json) => _$_BloodType(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      type: json['type'] as String?,
      rhFactor: json['rh_factor'] as String?,
      group: json['group'] as String?,
    );

Map<String, dynamic> _$$_BloodTypeToJson(_$_BloodType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'type': instance.type,
      'rh_factor': instance.rhFactor,
      'group': instance.group,
    };
