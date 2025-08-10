abstract class LocalSource {
  Future<void> store(String key, Map<String, dynamic> json);
  Future<void> reset(String key);
  Future<Map<String, dynamic>?> retrieve(String key);
}