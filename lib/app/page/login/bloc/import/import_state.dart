part of 'import_cubit.dart';

@immutable
abstract class ImportState {}

class ImportInitial extends ImportState {}

class ImportLoading extends ImportState {}

class ImportLoaded extends ImportState {
  final ImportModel importModel;

  ImportLoaded(this.importModel);
}

class ImportError extends ImportState {
  final String error;

  ImportError(this.error);
}
