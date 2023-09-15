import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/detail/domain/address/address.dart';
import 'package:paytr_test_case/src/features/detail/domain/appliance/appliance.dart';
import 'package:paytr_test_case/src/features/detail/domain/bank/bank.dart';
import 'package:paytr_test_case/src/features/detail/domain/beer/beer.dart';
import 'package:paytr_test_case/src/features/detail/domain/blood_type/blood_type.dart';
import 'package:paytr_test_case/src/features/detail/domain/credit_card/credit_card.dart';
import 'package:paytr_test_case/src/features/detail/domain/history_state.dart';
import 'package:paytr_test_case/src/features/detail/domain/user/user.dart';
import 'package:paytr_test_case/src/features/shared/data/resources_repository.dart';
import 'package:paytr_test_case/src/routing/app_router.gr.dart';

@RoutePage()
class DetailListScreen extends ConsumerWidget {
  const DetailListScreen({
    required this.resource,
    super.key,
  });

  final Resource resource;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyStateProvider(resource));

    return Scaffold(
      appBar: AppBar(
        title: Text(resource.toReadableString()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH16,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  final repo = ref.read(resourcesRepositoryProvider);

                  dynamic id;

                  switch (resource) {
                    case Resource.users:
                      final user = await repo.fetchUser();
                      repo.saveUser(user);
                      id = user.id;
                    case Resource.addresses:
                      final address = await repo.fetchAddress();
                      repo.saveAddress(address);
                      id = address.zipCode;
                    case Resource.banks:
                      final bank = await repo.fetchBank();
                      repo.saveBank(bank);
                      id = bank.id;
                    case Resource.appliances:
                      final appliance = await repo.fetchAppliance();
                      repo.saveAppliance(appliance);
                      id = appliance.id;
                    case Resource.beers:
                      final beer = await repo.fetchBeer();
                      repo.saveBeer(beer);
                      id = beer.id;
                    case Resource.bloodTypes:
                      final bloodType = await repo.fetchBloodType();
                      repo.saveBloodType(bloodType);
                      id = bloodType.id;
                    case Resource.creditCards:
                      final creditCard = await repo.fetchCreditCard();
                      repo.saveCreditCard(creditCard);
                      id = creditCard.id;
                  }

                  if (!context.mounted) return;

                  context.pushRoute(DetailRoute(
                    resource: resource,
                    id: id,
                  ));

                  // ignore: unused_result
                  ref.refresh(historyStateProvider(resource));
                },
                child: const Text('Yeni Veri Getir'),
              ),
            ),
            gapH16,
            Center(
              child: Text(
                'Geçmiş ${resource.toReadableString()}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            gapH16,
            history.when(data: (data) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];

                  return HistoryItem(
                    data: item,
                    resource: resource,
                  );
                },
              );
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, error: (err, _) {
              return Text(err.toString());
            }),
          ],
        ),
      ),
    );
  }
}

class HistoryItem extends ConsumerWidget {
  const HistoryItem({
    required this.data,
    required this.resource,
    super.key,
  });

  final Resource resource;
  final dynamic data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String text = '';
    if (data is User) {
      text = '${data.firstName} ${data.lastName}';
    } else if (data is Address) {
      text = '${data.streetName}, ${data.city}';
    } else if (data is Bank) {
      text = 'Hesap No: ${(data as Bank).accountNumber}';
    } else if (data is Appliance) {
      text = '${(data as Appliance).equipment}';
    } else if (data is Beer) {
      text = '${(data as Beer).name}';
    } else if (data is BloodType) {
      text = '${(data as BloodType).type} ${data.rhFactor}';
    } else if (data is CreditCard) {
      text = 'No: ${(data as CreditCard).creditCardNumber}';
    } else {
      text = 'Unknown data';
    }

    return GestureDetector(
      onTap: () {
        context.pushRoute(DetailRoute(resource: resource, id: data.id));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),
        padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(text),
            const Spacer(),
            // details button
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
