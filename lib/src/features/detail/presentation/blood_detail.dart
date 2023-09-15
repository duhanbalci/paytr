import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/blood_type/blood_type.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

class BloodTypeDetail extends ConsumerWidget {
  const BloodTypeDetail({
    required this.bloodType,
    super.key,
  });

  final BloodType bloodType;

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
            DetailKV('Grup', bloodType.group),
            DetailKV('RH', bloodType.rhFactor),
          ],
        ),
      ),
    );
  }
}
