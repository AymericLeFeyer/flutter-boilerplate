import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/src/core/logger/log_service.dart';
import 'package:flutter_boilerplate/src/core/storage/storage_service.dart';

import 'http_service.dart';

class HttpServiceDioImpl implements HttpService {
  final dio = Dio();

  HttpServiceDioImpl();

  @override
  Future<Response> delete(String url, {bool authenticated = true, data}) async {
    Options options = Options(headers: {
      "Content-Type": "application/json"
    });
    if(authenticated) {
      options.headers?['Authorization'] = "Bearer ${storageService.get('token').token}";
    }
    return await dio.delete(url, data: data, options: options);
  }

  @override
  Future<Response> get(String url, {bool authenticated = true, params}) async {
    Options options = Options(headers: {
      "Content-Type": "application/json"
    });
    if(authenticated) {
      logger.i(storageService.get('token'));
      options.headers?['Authorization'] = "Bearer ${storageService.get('token').token}";
    }
    return await dio.get(url, queryParameters: params, options: options);
  }

  @override
  Future<Response> post(String url, {bool authenticated = true, data}) async {
    Options options = Options(headers: {
      "Content-Type": "application/json"
    });
    if(authenticated) {
      options.headers?['Authorization'] = "Bearer ${storageService.get('token').token}";
    }
    return await dio.post(url, data: data, options: options);
  }

  @override
  Future<Response> put(String url, {bool authenticated = true, data}) async {
    Options options = Options(headers: {
      "Content-Type": "application/json"
    });
    if(authenticated) {
      options.headers?['Authorization'] = "Bearer ${storageService.get('token').token}";
    }
    return await dio.put(url, data:  data, options: options);
  }}
