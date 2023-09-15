import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/bank/bank.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

class BankDetail extends ConsumerWidget {
  const BankDetail({
    required this.bank,
    super.key,
  });

  final Bank bank;

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
            DetailKV('Banka', bank.bankName),
            DetailKV('IBAN', bank.iban),
            DetailKV('Hesap No', bank.accountNumber),
          ],
        ),
      ),
    );
  }
}
