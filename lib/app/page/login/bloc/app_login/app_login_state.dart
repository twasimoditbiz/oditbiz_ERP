part of 'app_login_cubit.dart';

@immutable
abstract class AppLoginState {}

class AppLoginInitial extends AppLoginState {}

class AppLoginLoading extends AppLoginState {}

class AppLoginLoaded extends AppLoginState {
  final AppLoginModel appLoginModel;

  AppLoginLoaded(this.appLoginModel);
}

class AppLoginError extends AppLoginState {
  final String error;

  AppLoginError(this.error);
}
