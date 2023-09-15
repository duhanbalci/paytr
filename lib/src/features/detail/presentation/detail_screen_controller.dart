import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/shared/data/resources_repository.dart';

final detailProvider =
    FutureProvider.family<Object, (Resource, dynamic)>((ref, obj) async {
  final repo = ref.read(resourcesRepositoryProvider);

  dynamic data = switch (obj.$1) {
    Resource.users => repo.getUser(obj.$2),
    Resource.addresses => repo.getAddress(obj.$2),
    Resource.banks => repo.getBank(obj.$2),
    Resource.appliances => repo.getAppliance(obj.$2),
    Resource.beers => repo.getBeer(obj.$2),
    Resource.bloodTypes => repo.getBloodType(obj.$2),
    Resource.creditCards => repo.getCreditCard(obj.$2),
  };

  return data ?? repo.fetchUser();
});
