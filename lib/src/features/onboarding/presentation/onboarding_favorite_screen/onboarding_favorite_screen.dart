import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OnboardingFavoriteScreen extends ConsumerWidget {
  const OnboardingFavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ...Resource.values.map((e) => OnboardingRssItem(resource: e)),
      ],
    );
  }
}

class OnboardingRssItem extends ConsumerWidget {
  const OnboardingRssItem({
    required this.resource,
    super.key,
  });

  final Resource resource;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveCheckboxListTile(
      formControlName: resource.text,
      title: Text(resource.toReadableString()),
    );
  }
}
