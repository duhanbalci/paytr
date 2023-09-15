import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/address/address.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

class AddressDetail extends ConsumerWidget {
  const AddressDetail({
    required this.address,
    super.key,
  });

  final Address address;

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
            DetailKV('Ülke', address.country),
            DetailKV('Eyalet', address.state),
            DetailKV('Şehir', address.city),
            DetailKV('Posta Kodu', address.zipCode),
          ],
        ),
      ),
    );
  }
}
