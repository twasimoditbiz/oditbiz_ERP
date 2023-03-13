part of 'brand_cubit.dart';


@immutable
abstract class BrandState {}

class BrandInitial extends BrandState {}

class BrandLoading extends BrandState {}

class BrandLoaded extends BrandState {
final List<SalesmanModel> brandModel;
  BrandLoaded({required this.brandModel});
}


class BrandError extends BrandState {
  final String error;
  BrandError(this.error);
}
