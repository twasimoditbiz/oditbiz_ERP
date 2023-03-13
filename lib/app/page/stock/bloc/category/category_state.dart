part of 'category_cubit.dart';


@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
final List<SalesmanModel> categoryModel;
  CategoryLoaded({required this.categoryModel});
}


class CategoryError extends CategoryState {
  final String error;
  CategoryError(this.error);
}
