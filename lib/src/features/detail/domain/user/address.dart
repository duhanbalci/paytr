import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinates.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    String? city,
    @JsonKey(name: 'street_name') String? streetName,
    @JsonKey(name: 'street_address') String? streetAddress,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? state,
    String? country,
    Coordinates? coordinates,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
