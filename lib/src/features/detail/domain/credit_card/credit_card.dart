import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

@freezed
class CreditCard with _$CreditCard {
  factory CreditCard({
    int? id,
    String? uid,
    @JsonKey(name: 'credit_card_number') String? creditCardNumber,
    @JsonKey(name: 'credit_card_expiry_date') String? creditCardExpiryDate,
    @JsonKey(name: 'credit_card_type') String? creditCardType,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);
}
