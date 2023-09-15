import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/features/detail/domain/beer/beer.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

class BeerDetail extends ConsumerWidget {
  const BeerDetail({
    required this.beer,
    super.key,
  });

  final Beer beer;

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
            DetailKV('Marka', beer.brand),
            DetailKV('Ürün', beer.name),
            DetailKV('Alkol', beer.alcohol),
            DetailKV('Malt', beer.malts),
          ],
        ),
      ),
    );
  }
}
