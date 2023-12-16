import 'log_service_logger.dart';

LogService logger = LogServiceLogger();

abstract class LogService {
  t(dynamic str, {dynamic data});
  d(dynamic str, {dynamic data});
  i(dynamic str, {dynamic data});
  w(dynamic str, {dynamic data});
  e(dynamic str, {dynamic data});
  f(dynamic str, {dynamic data});
}
