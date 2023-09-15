import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/onboarding/domain/onboarding_stage_enum.dart';
import 'package:paytr_test_case/src/features/onboarding/domain/onboarding_state.dart';
import 'package:paytr_test_case/src/features/shared/data/secure_storage_repository.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';
import 'package:paytr_test_case/src/features/shared/domain/favorites_state.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OnboardingController extends StateNotifier<OnboardingState> {
  OnboardingController(this.ref)
      : super(OnboardingState(
          pageController: PageController(),
          loading: false,
          stage: OnboardingStage.favorite,
        ));

  Ref ref;

  final form = FormGroup({
    ...Map<String, FormControl>.fromEntries(Resource.values.map(
      (e) => MapEntry(e.text, FormControl<bool>()),
    )),
    'name': FormControl<String>(
      validators: [Validators.required],
    ),
    'surname': FormControl<String>(
      validators: [Validators.required],
    ),
    'age': FormControl<int>(
      validators: [Validators.required],
    ),
  });

  String getStageText() {
    return switch (state.stage) {
      OnboardingStage.favorite => 'Favori Kaynaklarım',
      OnboardingStage.name => 'Ad Soyad',
      OnboardingStage.age => 'Yaş',
    };
  }

  void setStage(OnboardingStage stage) {
    state = state.copyWith(stage: stage);
  }

  Future<void> completeOnboarding() async {
    final secureStorage = ref.read(secureStorageProvider);

    // get values from form
    final name = form.control('name').value;
    final surname = form.control('surname').value;
    final age = form.control('age').value;

    // save values to secure storage
    await Future.wait([
      secureStorage.write(key: 'name', value: name),
      secureStorage.write(key: 'surname', value: surname),
      secureStorage.write(key: 'age', value: age.toString()),
    ]);

    // get favorites from form and convert to map as [controlerName: value] e.g. ['USERS': true]
    final favorites =
        Resource.values.where((e) => form.control(e.text).value == true);

    // save favorites to shared preferences
    ref.read(favoritesProvider.notifier).set(favorites);

    final sharedPreferences = ref.read(sharedPreferencesProvider);
    sharedPreferences.setBool('onboarding', true);
  }

  bool isOnboardingCompleted() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final onboarding = sharedPreferences.getBool('onboarding') ?? false;
    return onboarding;
  }
}

final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, OnboardingState>(
        (ref) => OnboardingController(ref));
