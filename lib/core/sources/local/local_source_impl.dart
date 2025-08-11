import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sneakers/core/sources/local/local_source.dart';

class LocalSourceImpl extends LocalSource {
  final SharedPreferences loacalStore;

  LocalSourceImpl(this.loacalStore);

  @override
  Future<void> reset(String key) async {
    await loacalStore.remove(key);
  }

  @override
  Future<void> store(String key, Map<String, dynamic> json) async {
    final jsonString = jsonEncode(json);
    await loacalStore.setString(key, jsonString);
  }

  @override
  Future<Map<String, dynamic>?> retrieve(String key) async {
    final jsonString = loacalStore.getString(key);
    if(jsonString == null) {
      return null;
    }
    return jsonDecode(jsonString);
  }
}