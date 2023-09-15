import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    int? id,
    String? uid,
    String? city,
    @JsonKey(name: 'street_name') String? streetName,
    @JsonKey(name: 'street_address') String? streetAddress,
    @JsonKey(name: 'secondary_address') String? secondaryAddress,
    @JsonKey(name: 'building_number') String? buildingNumber,
    @JsonKey(name: 'mail_box') String? mailBox,
    String? community,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? zip,
    String? postcode,
    @JsonKey(name: 'time_zone') String? timeZone,
    @JsonKey(name: 'street_suffix') String? streetSuffix,
    @JsonKey(name: 'city_suffix') String? citySuffix,
    @JsonKey(name: 'city_prefix') String? cityPrefix,
    String? state,
    @JsonKey(name: 'state_abbr') String? stateAbbr,
    String? country,
    @JsonKey(name: 'country_code') String? countryCode,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'full_address') String? fullAddress,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
