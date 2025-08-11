

import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final int id;
  final String name;
  final String email;
  final double wallet;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.wallet,
  });

  UserEntity copyWith({
    int? id,
    String? name,
    String? email,
    double? wallet,
  }) {
    return UserEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      wallet: wallet ?? this.wallet,
    );
  }

  @override
  List<Object?> get props => [
      id,
      name,
      email,
      wallet
    ];
}