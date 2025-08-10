

class UserEntity {
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

  List<Object?> get props => [
      id,
      name,
      email,
      wallet
    ];
}