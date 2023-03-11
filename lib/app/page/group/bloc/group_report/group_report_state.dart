part of 'group_report_cubit.dart';

@immutable
abstract class GroupReportState {}

class GroupReportInitial extends GroupReportState {}

class GroupReportLoading extends GroupReportState {}

class GroupReportLoaded extends GroupReportState {
  final List<GropReportModel> groupReportModel;
  GroupReportLoaded({required this.groupReportModel});
}

class GropReporValidationError extends GroupReportState {
  GropReporValidationError();
}

class GroupReportError extends GroupReportState {
  final String error;
  GroupReportError(this.error);
}
