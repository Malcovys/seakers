import 'package:sneakers/core/models/model.dart';
import 'package:sneakers/domain/entities/user_entity.dart';

class UserModel extends Model<UserEntity>{
  int id;
  final String name;
  final String email;
  final double wallet;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.wallet,
  });

  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      wallet: json["wallet"],
    );
  }

  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      wallet: entity.wallet,
    );
  }

  @override
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      wallet: wallet,
    );
  }
  
  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "wallet": wallet
    };
  }
}
