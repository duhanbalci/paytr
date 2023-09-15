// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      city: json['city'] as String?,
      streetName: json['street_name'] as String?,
      streetAddress: json['street_address'] as String?,
      zipCode: json['zip_code'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street_name': instance.streetName,
      'street_address': instance.streetAddress,
      'zip_code': instance.zipCode,
      'state': instance.state,
      'country': instance.country,
      'coordinates': instance.coordinates,
    };
