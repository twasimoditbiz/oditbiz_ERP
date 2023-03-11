part of 'salesman_cubit.dart';


@immutable
abstract class SalesManState {}

class SalesManInitial extends SalesManState {}

class SalesManLoading extends SalesManState {}

class SalesManLoaded extends SalesManState {
final List<SalesmanModel> salesManModel;
  SalesManLoaded({required this.salesManModel});
}


class SalesManError extends SalesManState {
  final String error;
  SalesManError(this.error);
}
