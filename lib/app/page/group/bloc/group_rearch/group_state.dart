part of 'group_cubit.dart';


@immutable
abstract class GroupState {}

class GroupInitial extends GroupState {}

class GroupLoading extends GroupState {}

class GroupLoaded extends GroupState {
final List<GroupModel> groupModel;
  GroupLoaded({required this.groupModel});
}


class GroupError extends GroupState {
  final String error;
  GroupError(this.error);
}
