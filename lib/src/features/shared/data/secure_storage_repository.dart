import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return FlutterSecureStorage(aOptions: _getAndroidOptions());
});
