import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/appliance/appliance.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

class ApplianceDetail extends ConsumerWidget {
  const ApplianceDetail({
    required this.appliance,
    super.key,
  });

  final Appliance appliance;

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
            DetailKV('Marka', appliance.brand),
            DetailKV('Ürün', appliance.equipment),
          ],
        ),
      ),
    );
  }
}
