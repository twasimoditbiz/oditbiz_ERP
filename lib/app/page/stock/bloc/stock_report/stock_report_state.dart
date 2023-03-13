part of 'stock_report_cubit.dart';

@immutable
abstract class StockReportState {}

class StockReportInitial extends StockReportState {}

class StockReportLoading extends StockReportState {}

class StockReportLoaded extends StockReportState {
  final List<GropReportModel> stockReportModel;
  StockReportLoaded({required this.stockReportModel});
}

class GropReporValidationError extends StockReportState {
  GropReporValidationError();
}

class StockReportError extends StockReportState {
  final String error;
  StockReportError(this.error);
}
