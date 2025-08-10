import 'package:sneakers/domain/entities/user_entity.dart';

class UserModel {
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

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      wallet: json["wallet"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "wallet": wallet
    };
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      wallet: entity.wallet,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      wallet: wallet,
    );
  }
}
