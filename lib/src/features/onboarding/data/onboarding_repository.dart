import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';

class OnboardingRepository {
  OnboardingRepository(this.ref);

  Ref ref;

  static const onboardingCompleteKey = 'onboardingComplete';

  Future<void> setOnboardingComplete() async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setBool(onboardingCompleteKey, true);
  }

  bool isOnboardingComplete() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    return sharedPreferences.getBool(onboardingCompleteKey) ?? false;
  }
}

final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  return OnboardingRepository(ref);
});
