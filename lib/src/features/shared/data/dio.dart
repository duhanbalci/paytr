import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://random-data-api.com/api/v2',
    ),
  );
  return dio;
});
