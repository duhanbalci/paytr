import 'package:freezed_annotation/freezed_annotation.dart';

part 'appliance.freezed.dart';
part 'appliance.g.dart';

@freezed
class Appliance with _$Appliance {
  factory Appliance({
    int? id,
    String? uid,
    String? brand,
    String? equipment,
  }) = _Appliance;

  factory Appliance.fromJson(Map<String, dynamic> json) =>
      _$ApplianceFromJson(json);
}
