import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'http_service_dio.dart';

part 'http_service.g.dart';

@riverpod
HttpService httpService(HttpServiceRef ref) => HttpServiceDioImpl();

abstract class HttpService {
  Future<dynamic> get(String url, {bool authenticated, dynamic params});
  Future<dynamic> post(String url, {bool authenticated, dynamic data});
  Future<dynamic> put(String url, {bool authenticated, dynamic data});
  Future<dynamic> delete(String url, {bool authenticated, dynamic data});
}
