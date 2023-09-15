// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:paytr_test_case/src/app.dart';
import 'package:paytr_test_case/src/constants/resources.dart';
import 'package:paytr_test_case/src/features/detail/domain/address/address.dart';
import 'package:paytr_test_case/src/features/detail/presentation/address_detail.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('MyApp', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    final sharedPreferences = await SharedPreferences.getInstance();
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
    );

    await tester.pumpWidget(UncontrolledProviderScope(
      container: container,
      child: MyApp(),
    ));

    await tester.pumpAndSettle(const Duration(seconds: 2));

    for (final element in Resource.values) {
      expect(find.textContaining(element.toReadableString()), findsOneWidget);
    }

    await tester.pumpAndSettle();
  });

  testWidgets('HistoryItem', (WidgetTester tester) async {
    final addressData = Address(
      streetName: 'street',
      streetAddress: 'streetAddress',
      city: 'city',
      state: 'state',
      zipCode: 'zipCode',
      country: 'country',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AddressDetail(address: addressData),
        ),
      ),
    );

    await tester.pumpAndSettle(const Duration(seconds: 5));
    await tester.pumpAndSettle();

    // check if all data is shown
    expect(find.text(addressData.country!), findsOneWidget);
    expect(find.text(addressData.state!), findsOneWidget);
    expect(find.text(addressData.city!), findsOneWidget);
    expect(find.text(addressData.zipCode!), findsOneWidget);
    expect(find.text('district'), findsNothing);

    await tester.pumpAndSettle();
  });
}
