import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/shared/data/resources_repository.dart';

final historyStateProvider = FutureProvider.family<List<dynamic>, Resource>(
  (ref, r) async {
    final repo = ref.read(resourcesRepositoryProvider);

    final response = switch (r) {
      Resource.users => repo.getUsers(),
      Resource.addresses => repo.getAddresses(),
      Resource.banks => repo.getBanks(),
      Resource.appliances => repo.getAppliances(),
      Resource.beers => repo.getBeers(),
      Resource.bloodTypes => repo.getBloodTypes(),
      Resource.creditCards => repo.getCreditCards(),
    };

    return response;
  },
);
