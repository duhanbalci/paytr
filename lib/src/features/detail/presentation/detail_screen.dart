import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/detail/domain/address/address.dart';
import 'package:paytr_test_case/src/features/detail/domain/appliance/appliance.dart';
import 'package:paytr_test_case/src/features/detail/domain/bank/bank.dart';
import 'package:paytr_test_case/src/features/detail/domain/beer/beer.dart';
import 'package:paytr_test_case/src/features/detail/domain/blood_type/blood_type.dart';
import 'package:paytr_test_case/src/features/detail/domain/credit_card/credit_card.dart';
import 'package:paytr_test_case/src/features/detail/domain/user/user.dart';
import 'package:paytr_test_case/src/features/detail/presentation/address_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/appliance_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/bank_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/beer_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/blood_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/credit_card_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/detail_screen_controller.dart';
import 'package:paytr_test_case/src/features/detail/presentation/user_detail.dart';

@RoutePage()
class DetailScreen extends ConsumerWidget {
  const DetailScreen({
    required this.resource,
    required this.id,
    super.key,
  });

  final Resource resource;
  final dynamic id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(detailProvider((resource, id)));

    return Scaffold(
      appBar: AppBar(
        title: Text(resource.toReadableString()),
      ),
      body: data.when(
        data: (data) {
          if (data is User) {
            return UserDetail(user: data);
          } else if (data is Bank) {
            return BankDetail(bank: data);
          } else if (data is Address) {
            return AddressDetail(address: data);
          } else if (data is Appliance) {
            return ApplianceDetail(appliance: data);
          } else if (data is Beer) {
            return BeerDetail(beer: data);
          } else if (data is BloodType) {
            return BloodTypeDetail(bloodType: data);
          } else if (data is CreditCard) {
            return CreditCardDetail(creditCard: data);
          }

          return const Text('Unknown data');
        },
        error: (err, _) => Text(err.toString()),
        loading: () => const Text('loading'),
      ),
    );
  }
}
