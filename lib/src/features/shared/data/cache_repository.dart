import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CacheRepository {
  CacheRepository(this.ref);

  Ref ref;

  final cacheBox = Hive.box('cache');

  void set(String key, String value) {
    cacheBox.put(key, value);
  }

  String? get(String key) {
    return cacheBox.get(key);
  }
}

final cacheRepositoryProvider = Provider<CacheRepository>((ref) {
  return CacheRepository(ref);
});
