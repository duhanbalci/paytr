import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OnboardingNameScreen extends ConsumerWidget {
  const OnboardingNameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          gapH16,
          ReactiveTextField(
            key: const Key('name'),
            formControlName: 'name',
            decoration: const InputDecoration(
              labelText: 'Ad',
              border: OutlineInputBorder(),
            ),
          ),
          gapH16,
          ReactiveTextField(
            key: const Key('surname'),
            formControlName: 'surname',
            decoration: const InputDecoration(
              labelText: 'Soyad',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
