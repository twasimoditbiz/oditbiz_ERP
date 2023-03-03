part of 'location_cubit.dart';





@immutable
abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  final List<LoginLocationModel> loginLocationModel;

  LocationLoaded(this.loginLocationModel);
}

class LocationError extends LocationState {
  final String error;

  LocationError(this.error);
}
