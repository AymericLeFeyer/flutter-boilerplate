import 'package:flutter_boilerplate/src/core/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServiceSharedPreferences implements StorageService {
  late SharedPreferences prefs;

  @override
  void delete(String key) {
    // TODO: implement delete
  }

  @override
  get(String key) {
    return prefs.get(key);
  }

  @override
  Future init() async{
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void put<T>(String key, T value) {
    final set =
      switch (value.runtimeType) {
        int => prefs.setInt(key, value as int),
        bool => prefs.setBool(key, value as bool),
        String => prefs.setString(key, value as String),
        double => prefs.setDouble(key, value as double),
        _ => prefs.setString(key, value.toString())
      };
  }

}