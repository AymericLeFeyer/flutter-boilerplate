import 'package:flutter_boilerplate/src/core/storage/storage_service_shared_preferences.dart';

StorageService storageService = StorageServiceSharedPreferences();

abstract class StorageService {
  Future init();
  void put<T>(String key, T value);
  dynamic get(String key);
  void delete(String key);
}
