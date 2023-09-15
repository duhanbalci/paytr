import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:paytr_test_case/src/features/shared/data/cache_repository.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://random-data-api.com/api/v2',
    ),
  );
  dio.interceptors.add(DioCacheInterceptor(ref));
  return dio;
});

class DioCacheInterceptor extends Interceptor {
  DioCacheInterceptor(this.ref);

  Ref ref;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final key = err.requestOptions.uri.toString();
    final cache = ref.read(cacheRepositoryProvider).get(key);

    if (cache != null) {
      final data = jsonDecode(cache);
      final response = Response(
        requestOptions: err.requestOptions,
        data: data,
        statusCode: 200,
      );
      return handler.resolve(response);
    }

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final key = response.requestOptions.uri.toString();
    final cacheStore = ref.read(cacheRepositoryProvider);
    cacheStore.set(key, jsonEncode(response.data));
    super.onResponse(response, handler);
  }
}
