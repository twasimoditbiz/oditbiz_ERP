part of 'bottom_cubit.dart';

@immutable
abstract class BottomState {}

class BottomInitial extends BottomState {}

class BottomLoading extends BottomState {}

class BottomLoaded extends BottomInitial {}

class BottomError extends BottomInitial {
  final String errorText;

  BottomError({required this.errorText});
}
