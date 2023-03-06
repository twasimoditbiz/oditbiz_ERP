part of 'user_login_cubit.dart';

@immutable
abstract class UserLoginState {}

class UserLoginInitial extends UserLoginState {}

class UserLoginLoading extends UserLoginState {}

class UserLoginLoaded extends UserLoginState {
  final UserLoginModel userLoginModel;

  UserLoginLoaded(this.userLoginModel);
}

class UserLoginError extends UserLoginState {
  final String error;

  UserLoginError(this.error);
}
