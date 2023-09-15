import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paytr_test_case/src/constants/app_sizes.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/shared/domain/favorites_state.dart';
import 'package:paytr_test_case/src/routing/app_router.gr.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.microtask(() => ref.read(favoritesProvider.notifier).load());
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            gapH16,
            Center(
              child: Text(
                'Favori Kaynaklar',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            gapH16,
            ...favorites.map((e) => HomeResourceItem(resource: e)),
            gapH16,
            Center(
              child: Text(
                'Kaynaklar',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            gapH16,
            ...Resource.values
                .toSet()
                .difference(favorites.toSet())
                .map((e) => HomeResourceItem(resource: e)),
            gapH16,
          ],
        ),
      ),
    );
  }
}

class HomeResourceItem extends ConsumerWidget {
  const HomeResourceItem({
    required this.resource,
    super.key,
  });

  final Resource resource;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(DetailListRoute(resource: resource));
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
            Text(resource.toReadableString()),
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
