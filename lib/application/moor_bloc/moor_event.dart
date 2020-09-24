part of 'moor_bloc.dart';

@freezed
abstract class MoorEvent with _$MoorEvent {
  const factory MoorEvent.insert(BankDao dao, Bank bank) = _Insert;
  const factory MoorEvent.delete(BankDao dao, Bank bank) = _Delete;
  const factory MoorEvent.startSearch() = _StartSearch;
  const factory MoorEvent.stopSearch() = _StopSearch;
  const factory MoorEvent.submitSearch(String query) = _SubmitSearch;
}
