// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coordinates _$$_CoordinatesFromJson(Map<String, dynamic> json) =>
    _$_Coordinates(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
