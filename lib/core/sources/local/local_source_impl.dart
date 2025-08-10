import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:sneakers/core/models/model.dart';
import 'package:sneakers/core/sources/local/local_source.dart';

class LocalSourceImpl extends LocalSource<Model> {
  final String key;

  LocalSourceImpl(this.key);

  @override
  Future<void> reset() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  @override
  Future<void> store(Model model) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(model.toJson());
    await prefs.setString(key, jsonString);
  }

  @override
  Future<Model?> retrieve() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(key);
    
    if (jsonString == null) {
      return null;
    }
    
    try {
      final jsonMap = jsonDecode(jsonString);
      return Model.fromJson(jsonMap);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}