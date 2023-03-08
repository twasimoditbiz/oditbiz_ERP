part of 'ledger_search_cubit.dart';


@immutable
abstract class LedgerSearchResponseState {}

class LedgerSearchResponseInitial extends LedgerSearchResponseState {}

class LedgerSearchResponseLoading extends LedgerSearchResponseState {}

class LedgerSearchResponseLoaded extends LedgerSearchResponseState {
final List<LedgerSearchModel> ledgerSearchModel;
  LedgerSearchResponseLoaded({required this.ledgerSearchModel});
}


class LedgerSearchResponseError extends LedgerSearchResponseState {
  final String error;
  LedgerSearchResponseError(this.error);
}
