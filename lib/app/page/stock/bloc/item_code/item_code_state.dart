part of 'item_code_cubit.dart';


@immutable
abstract class ItemNameState {}

class ItemNameInitial extends ItemNameState {}

class ItemNameLoading extends ItemNameState {}

class ItemNameLoaded extends ItemNameState {
final List<SalesmanModel> itemNameModel;
  ItemNameLoaded({required this.itemNameModel});
}


class ItemNameError extends ItemNameState {
  final String error;
  ItemNameError(this.error);
}
