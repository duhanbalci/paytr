import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'credit_card.dart';
import 'employment.dart';
import 'subscription.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    String? uid,
    String? password,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    String? email,
    String? avatar,
    String? gender,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'social_insurance_number') String? socialInsuranceNumber,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    Employment? employment,
    Address? address,
    @JsonKey(name: 'credit_card') CreditCard? creditCard,
    Subscription? subscription,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
