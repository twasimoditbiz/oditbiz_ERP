part of 'location_cubit.dart';


@immutable
abstract class RouteState {}

class RouteInitial extends RouteState {}

class RouteLoading extends RouteState {}

class RouteLoaded extends RouteState {
final List<RouteModel> routeModel;
  RouteLoaded({required this.routeModel});
}


class RouteError extends RouteState {
  final String error;
  RouteError(this.error);
}
