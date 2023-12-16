
import 'package:flutter_boilerplate/src/core/logger/log_service.dart';
import 'package:logger/logger.dart';

class LogServiceLogger implements LogService {
  final logger = Logger(
    printer: PrettyPrinter(),
  );

  @override
  d(dynamic str, {data}) {
    logger.d(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }

  @override
  e(dynamic str, {data}) {
    logger.e(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }

  @override
  f(dynamic str, {data}) {
    logger.f(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }

  @override
  i(dynamic str, {data}) {
    logger.i(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }

  @override
  t(dynamic str, {data}) {
    logger.t(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }

  @override
  w(dynamic str, {data}) {
    logger.w(str, time: data?.time, error: data?.error, stackTrace: data?.stackTrace);
  }
}
