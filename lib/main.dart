import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paytr_test_case/src/features/shared/data/shared_preferences_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:paytr_test_case/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

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

  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences),
    ],
  );
  runApp(UncontrolledProviderScope(
    container: container,
    child: MyApp(),
  ));
}
