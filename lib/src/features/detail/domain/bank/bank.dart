import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@freezed
class Bank with _$Bank {
  factory Bank({
    int? id,
    String? uid,
    @JsonKey(name: 'account_number') String? accountNumber,
    String? iban,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'routing_number') String? routingNumber,
    @JsonKey(name: 'swift_bic') String? swiftBic,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}
