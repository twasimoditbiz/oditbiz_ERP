part of 'ledger_cubit.dart';


@immutable
abstract class LegerResponseState {}

class LegerResponseInitial extends LegerResponseState {}

class LegerResponseLoading extends LegerResponseState {}

class LegerResponseLoaded extends LegerResponseState {
final List<LedgerReportResponseModel> ledgerReportResponseModel;
  LegerResponseLoaded({required this.ledgerReportResponseModel});
}

class LegerResponsePartiallyLoaded extends LegerResponseState {
 final List<LedgerReportResponseModel> ledgerReportResponseModel;
  LegerResponsePartiallyLoaded({required this.ledgerReportResponseModel});
}

class LegerResponseError extends LegerResponseState {
  final String error;
  LegerResponseError(this.error);
}
