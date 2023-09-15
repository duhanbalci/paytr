import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_type.freezed.dart';
part 'blood_type.g.dart';

@freezed
class BloodType with _$BloodType {
  factory BloodType({
    int? id,
    String? uid,
    String? type,
    @JsonKey(name: 'rh_factor') String? rhFactor,
    String? group,
  }) = _BloodType;

  factory BloodType.fromJson(Map<String, dynamic> json) =>
      _$BloodTypeFromJson(json);
}
