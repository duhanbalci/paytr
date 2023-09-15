import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:integration_test/integration_test.dart';
import 'package:paytr_test_case/src/app.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/detail/presentation/address_detail.dart';
import 'package:paytr_test_case/src/features/detail/presentation/detail_list_screen.dart';
import 'package:paytr_test_case/src/features/detail/presentation/detail_screen.dart';
import 'package:paytr_test_case/src/features/home/presentation/home_screen.dart';
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_favorite_screen/onboarding_favorite_screen.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('e2e', (tester) async {
      SharedPreferences.setMockInitialValues({});

      final sharedPreferences = await SharedPreferences.getInstance();
      final container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        ],
      );

      // Initialize Hive and open boxes
      await Hive.initFlutter();
      await Future.wait([
        'user',
        'address',
        'bank',
        'appliance',
        'beer',
        'bloodType',
        'creditCard',
      ].map((e) => Hive.openBox(e)));

      await tester.pumpWidget(UncontrolledProviderScope(
        container: container,
        child: MyApp(),
      ));

      await tester.pumpAndSettle(const Duration(seconds: 1));

      // check if all resources are shown
      for (final element in Resource.values) {
        expect(find.textContaining(element.toReadableString()), findsOneWidget);
      }

      // select 2 resources as favorite
      final listTiles = find.descendant(
        of: find.byType(OnboardingFavoriteScreen),
        matching: find.byType(ReactiveCheckboxListTile),
      );

      await tester.tap(listTiles.at(1));
      await tester.pumpAndSettle();
      await tester.tap(listTiles.at(2));
      await tester.pumpAndSettle();

      // go to next page
      final fab = find.byType(ElevatedButton);
      await tester.tap(fab);

      await tester.pumpAndSettle();

      // fill the form
      final nameInput = find.byKey(const Key('name'));
      await tester.enterText(nameInput, 'Test');

      final surnameInput = find.byKey(const Key('surname'));
      await tester.enterText(surnameInput, 'User');

      await tester.tap(fab);

      await tester.pumpAndSettle();

      final ageInput = find.byKey(const Key('age'));
      await tester.enterText(ageInput, '25');

      await tester.tap(fab);

      await tester.pumpAndSettle();

      final homeResourceItems = find.descendant(
        of: find.byType(HomeScreen),
        matching: find.byType(HomeResourceItem),
      );

      // should be 7 resource items
      expect(homeResourceItems, findsNWidgets(7));

      // tap on first resource item (which should be address resource)
      await tester.tap(homeResourceItems.at(0));

      await tester.pumpAndSettle();

      // tap new item button
      final newItemButton = find.descendant(
        of: find.byType(DetailListScreen),
        matching: find.byType(ElevatedButton),
      );

      await tester.tap(newItemButton);

      // wait until fetch is done
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();

      // should address show detail screen
      final userDetail = find.descendant(
        of: find.byType(DetailScreen),
        matching: find.byType(AddressDetail),
      );

      expect(userDetail, findsOneWidget);

      // pop back to home screen
      await tester.pageBack();

      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();

      final historyItem = find.descendant(
        of: find.byType(DetailListScreen),
        matching: find.byType(HistoryItem),
      );

      // should be at least 1 history item
      expect(historyItem, findsWidgets);

      // Trigger a frame.
      await tester.pumpAndSettle();
    });
  });
}
