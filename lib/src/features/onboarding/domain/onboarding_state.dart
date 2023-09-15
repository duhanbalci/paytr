import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paytr_test_case/src/features/onboarding/domain/onboarding_stage_enum.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    required PageController pageController,
    required bool loading,
    required OnboardingStage stage,
  }) = _OnboardingState;
}
