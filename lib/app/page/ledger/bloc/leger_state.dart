part of 'ledger_cubit.dart';

@immutable
abstract class LedgerState {}

class LedgerInitial extends LedgerState {}

class LegerResponseLoading extends LedgerState {}

class LegerResponseLoaded extends LedgerState {
  final List<LedgerReportResponseModel> ledgerReportResponseModel;
  LegerResponseLoaded({required this.ledgerReportResponseModel});
}

class LegerResponsePartiallyLoaded extends LedgerState {
  final List<LedgerReportResponseModel> ledgerReportResponseModel;
  LegerResponsePartiallyLoaded({required this.ledgerReportResponseModel});
}

class LedgerError extends LedgerState {
  final String error;
  LedgerError(this.error);
}
