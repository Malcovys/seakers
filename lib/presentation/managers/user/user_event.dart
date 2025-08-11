import 'package:equatable/equatable.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();
  @override
  List<Object?> get props => [];
}

final class LoginEvent extends UserEvent {
  final String email;
  final String password;
  const LoginEvent({required this.email, required this.password});
  @override
  List<Object?> get props => [email, password];
}

final class LogoutEvent extends UserEvent {
  const LogoutEvent();
}

final class RetriveCurrentUserEvent extends UserEvent {
  const RetriveCurrentUserEvent();
}