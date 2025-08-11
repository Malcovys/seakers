
import 'package:equatable/equatable.dart';
import 'package:sneakers/domain/entities/user_entity.dart';

enum UserStatus {
  loading,
  error,
  authenticated,
  initial,
}

class UserState extends Equatable{
  final UserStatus status;
  final UserEntity? currentUser;
  final String? errorMessage;

  const UserState({
    required this.status,
    this.currentUser,
    this.errorMessage,
  });

  UserState copyWith({
    UserStatus? status,
    UserEntity? currentUser,
    String? errorMessage,
  }) {
    return UserState(
      status: status ?? this.status,
      currentUser: currentUser ?? this.currentUser,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
  
  @override
  List<Object?> get props => [
    status,
    currentUser,
    errorMessage,
  ];
}

class UserInitialState extends UserState {
  const UserInitialState({
    super.status = UserStatus.initial,
  });
}