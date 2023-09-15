// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Beer _$$_BeerFromJson(Map<String, dynamic> json) => _$_Beer(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      brand: json['brand'] as String?,
      name: json['name'] as String?,
      style: json['style'] as String?,
      hop: json['hop'] as String?,
      yeast: json['yeast'] as String?,
      malts: json['malts'] as String?,
      ibu: json['ibu'] as String?,
      alcohol: json['alcohol'] as String?,
      blg: json['blg'] as String?,
    );

Map<String, dynamic> _$$_BeerToJson(_$_Beer instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'brand': instance.brand,
      'name': instance.name,
      'style': instance.style,
      'hop': instance.hop,
      'yeast': instance.yeast,
      'malts': instance.malts,
      'ibu': instance.ibu,
      'alcohol': instance.alcohol,
      'blg': instance.blg,
    };
