import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/features/onboarding/domain/onboarding_stage_enum.dart';
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_age_screen/onboarding_age_screen.dart';
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_controller.dart';
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_favorite_screen/onboarding_favorite_screen.dart';
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_name_screen/onboarding_name_screen.dart';
import 'package:paytr_test_case/src/routing/app_router.gr.dart';
import 'package:paytr_test_case/src/utils/alert_dialogs.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    Future.microtask(() async {
      if (context.mounted) {
        if (context.router.current.name == OnboardingRoute.name &&
            controller.isOnboardingCompleted()) {
          context.replaceRoute(const HomeRoute());
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.getStageText()),
      ),
      body: ReactiveForm(
        formGroup: controller.form,
        child: PageView(
          controller: state.pageController,
          onPageChanged: (value) {
            final stage = switch (value) {
              0 => OnboardingStage.favorite,
              1 => OnboardingStage.name,
              2 => OnboardingStage.age,
              _ => OnboardingStage.favorite,
            };
            controller.setStage(stage);
          },
          children: const [
            OnboardingFavoriteScreen(),
            OnboardingNameScreen(),
            OnboardingAgeScreen(),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        onPressed: () async {
          if (state.stage == OnboardingStage.favorite) {
            // count selected items
            var finalCount = 0;
            controller.form.controls.values
                .whereType<FormControl<bool>>()
                .forEach((element) {
              if (element.value == true) {
                finalCount++;
              }
            });
            // if less than 2, show alert
            if (finalCount < 2) {
              showAlertDialog(
                context: context,
                title: 'Uyarı',
                content: 'En az 2 kaynak seçmelisiniz.',
                defaultActionText: 'Tamam',
              );
              return;
            }
            // if more than 2, go to next page
            state.pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else if (state.stage == OnboardingStage.name) {
            // validate name and surname
            if (controller.form.control('name').invalid ||
                controller.form.control('surname').invalid) {
              showAlertDialog(
                context: context,
                title: 'Uyarı',
                content: 'Ad ve soyad alanları boş bırakılamaz.',
                defaultActionText: 'Tamam',
              );
              return;
            }
            // go to next page
            state.pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else if (state.stage == OnboardingStage.age) {
            // validate age
            if (controller.form.control('age').invalid) {
              showAlertDialog(
                context: context,
                title: 'Uyarı',
                content: 'Yaş alanı boş bırakılamaz.',
                defaultActionText: 'Tamam',
              );
              return;
            }

            await controller.completeOnboarding();

            if (context.mounted) {
              context.pushRoute(const HomeRoute());
            }
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
