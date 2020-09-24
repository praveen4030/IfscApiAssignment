part of 'moor_bloc.dart';

@freezed
abstract class MoorState with _$MoorState {
  const factory MoorState({
    @required bool isSearching,
    @required String query,
  }) = _MoorState;

  factory MoorState.initial() => MoorState(isSearching: false, query: '',);
}
