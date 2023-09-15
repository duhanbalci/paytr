import 'package:freezed_annotation/freezed_annotation.dart';

part 'employment.freezed.dart';
part 'employment.g.dart';

@freezed
class Employment with _$Employment {
  factory Employment({
    String? title,
    @JsonKey(name: 'key_skill') String? keySkill,
  }) = _Employment;

  factory Employment.fromJson(Map<String, dynamic> json) =>
      _$EmploymentFromJson(json);
}
