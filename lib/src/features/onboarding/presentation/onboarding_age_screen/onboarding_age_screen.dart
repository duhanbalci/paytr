import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OnboardingAgeScreen extends ConsumerWidget {
  const OnboardingAgeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          gapH16,
          ReactiveTextField(
            key: const Key('age'),
            formControlName: 'age',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              labelText: 'Yaş',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
