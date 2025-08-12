/// Abstract base class for data models that can be converted between
/// different representations (JSON, Entity, etc.)
abstract class Model<T> {

  /// Converts the model to a JSON map
  Map<String, dynamic> toJson();
  
  /// Converts the model to its corresponding entity
  T toEntity();

/// Creates a model instance from an json
  static Model<T> fromJson<T>(Map<String, dynamic> json) {
    throw UnimplementedError('fromJson must be implemented in concrete classes');
  }
  
  /// Creates a model instance from an entity
  static Model<T> fromEntity<T>(T entity) {
    throw UnimplementedError('fromEntity must be implemented in concrete classes');
  }
}