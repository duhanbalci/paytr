// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      city: json['city'] as String?,
      streetName: json['street_name'] as String?,
      streetAddress: json['street_address'] as String?,
      secondaryAddress: json['secondary_address'] as String?,
      buildingNumber: json['building_number'] as String?,
      mailBox: json['mail_box'] as String?,
      community: json['community'] as String?,
      zipCode: json['zip_code'] as String?,
      zip: json['zip'] as String?,
      postcode: json['postcode'] as String?,
      timeZone: json['time_zone'] as String?,
      streetSuffix: json['street_suffix'] as String?,
      citySuffix: json['city_suffix'] as String?,
      cityPrefix: json['city_prefix'] as String?,
      state: json['state'] as String?,
      stateAbbr: json['state_abbr'] as String?,
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      fullAddress: json['full_address'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'city': instance.city,
      'street_name': instance.streetName,
      'street_address': instance.streetAddress,
      'secondary_address': instance.secondaryAddress,
      'building_number': instance.buildingNumber,
      'mail_box': instance.mailBox,
      'community': instance.community,
      'zip_code': instance.zipCode,
      'zip': instance.zip,
      'postcode': instance.postcode,
      'time_zone': instance.timeZone,
      'street_suffix': instance.streetSuffix,
      'city_suffix': instance.citySuffix,
      'city_prefix': instance.cityPrefix,
      'state': instance.state,
      'state_abbr': instance.stateAbbr,
      'country': instance.country,
      'country_code': instance.countryCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'full_address': instance.fullAddress,
    };
