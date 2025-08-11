
import 'package:bloc/bloc.dart';
import 'package:sneakers/application/usecases/user/retrive_current_user_usecase.dart';
import 'package:sneakers/presentation/managers/user/user_event.dart';
import 'package:sneakers/presentation/managers/user/user_state.dart';

import 'package:sneakers/application/usecases/user/login_usecase.dart';
import 'package:sneakers/application/usecases/user/logout_usecase.dart';


class UserBlock extends Bloc<UserEvent, UserState> {
  final LoginUsecase loginUsecase;
  final LogoutUsecase logoutUsecase;
  final RetriveCurrentUserUsecase retriveCurrentUserUsecase;

  UserBlock(this.loginUsecase, this.logoutUsecase, this.retriveCurrentUserUsecase) : super (const UserInitialState()) {
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<RetriveCurrentUserEvent>(_onRetrieveCurrentUser);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStatus.loading));
    final user = await loginUsecase(event.email, event.password);
    emit(state.copyWith(
      status: UserStatus.authenticated,
      currentUser: user,
      errorMessage: null,
    ));
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStatus.loading));
    try {
      await logoutUsecase();
      emit(const UserInitialState());
    } catch (e) {
      emit(state.copyWith(
        status: UserStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onRetrieveCurrentUser(RetriveCurrentUserEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStatus.loading, errorMessage: null));
    try {
      final user = await retriveCurrentUserUsecase();
      emit(state.copyWith(
        status: UserStatus.authenticated,
        currentUser: user,
        errorMessage: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: UserStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}