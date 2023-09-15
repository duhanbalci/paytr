import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/credit_card/credit_card.dart';
import 'package:paytr_test_case/src/features/detail/presentation/details_kv.dart';

class CreditCardDetail extends ConsumerWidget {
  const CreditCardDetail({
    required this.creditCard,
    super.key,
  });

  final CreditCard creditCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH16,
            DetailKV('Tip', creditCard.creditCardType),
            DetailKV('Son Kullanma', creditCard.creditCardExpiryDate),
            DetailKV('No', creditCard.creditCardNumber),
          ],
        ),
      ),
    );
  }
}
