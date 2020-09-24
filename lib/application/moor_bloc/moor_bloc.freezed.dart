// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'moor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MoorEventTearOff {
  const _$MoorEventTearOff();

// ignore: unused_element
  _Insert insert(BankDao dao, Bank bank) {
    return _Insert(
      dao,
      bank,
    );
  }

// ignore: unused_element
  _Delete delete(BankDao dao, Bank bank) {
    return _Delete(
      dao,
      bank,
    );
  }

// ignore: unused_element
  _StartSearch startSearch() {
    return const _StartSearch();
  }

// ignore: unused_element
  _StopSearch stopSearch() {
    return const _StopSearch();
  }

// ignore: unused_element
  _SubmitSearch submitSearch(String query) {
    return _SubmitSearch(
      query,
    );
  }
}

// ignore: unused_element
const $MoorEvent = _$MoorEventTearOff();

mixin _$MoorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  });
}

abstract class $MoorEventCopyWith<$Res> {
  factory $MoorEventCopyWith(MoorEvent value, $Res Function(MoorEvent) then) =
      _$MoorEventCopyWithImpl<$Res>;
}

class _$MoorEventCopyWithImpl<$Res> implements $MoorEventCopyWith<$Res> {
  _$MoorEventCopyWithImpl(this._value, this._then);

  final MoorEvent _value;
  // ignore: unused_field
  final $Res Function(MoorEvent) _then;
}

abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({BankDao dao, Bank bank});
}

class __$InsertCopyWithImpl<$Res> extends _$MoorEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object dao = freezed,
    Object bank = freezed,
  }) {
    return _then(_Insert(
      dao == freezed ? _value.dao : dao as BankDao,
      bank == freezed ? _value.bank : bank as Bank,
    ));
  }
}

class _$_Insert implements _Insert {
  const _$_Insert(this.dao, this.bank)
      : assert(dao != null),
        assert(bank != null);

  @override
  final BankDao dao;
  @override
  final Bank bank;

  @override
  String toString() {
    return 'MoorEvent.insert(dao: $dao, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Insert &&
            (identical(other.dao, dao) ||
                const DeepCollectionEquality().equals(other.dao, dao)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dao) ^
      const DeepCollectionEquality().hash(bank);

  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return insert(dao, bank);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(dao, bank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return insert(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _Insert implements MoorEvent {
  const factory _Insert(BankDao dao, Bank bank) = _$_Insert;

  BankDao get dao;
  Bank get bank;
  _$InsertCopyWith<_Insert> get copyWith;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({BankDao dao, Bank bank});
}

class __$DeleteCopyWithImpl<$Res> extends _$MoorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object dao = freezed,
    Object bank = freezed,
  }) {
    return _then(_Delete(
      dao == freezed ? _value.dao : dao as BankDao,
      bank == freezed ? _value.bank : bank as Bank,
    ));
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.dao, this.bank)
      : assert(dao != null),
        assert(bank != null);

  @override
  final BankDao dao;
  @override
  final Bank bank;

  @override
  String toString() {
    return 'MoorEvent.delete(dao: $dao, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.dao, dao) ||
                const DeepCollectionEquality().equals(other.dao, dao)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dao) ^
      const DeepCollectionEquality().hash(bank);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return delete(dao, bank);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(dao, bank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MoorEvent {
  const factory _Delete(BankDao dao, Bank bank) = _$_Delete;

  BankDao get dao;
  Bank get bank;
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$StartSearchCopyWith<$Res> {
  factory _$StartSearchCopyWith(
          _StartSearch value, $Res Function(_StartSearch) then) =
      __$StartSearchCopyWithImpl<$Res>;
}

class __$StartSearchCopyWithImpl<$Res> extends _$MoorEventCopyWithImpl<$Res>
    implements _$StartSearchCopyWith<$Res> {
  __$StartSearchCopyWithImpl(
      _StartSearch _value, $Res Function(_StartSearch) _then)
      : super(_value, (v) => _then(v as _StartSearch));

  @override
  _StartSearch get _value => super._value as _StartSearch;
}

class _$_StartSearch implements _StartSearch {
  const _$_StartSearch();

  @override
  String toString() {
    return 'MoorEvent.startSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return startSearch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startSearch != null) {
      return startSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return startSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startSearch != null) {
      return startSearch(this);
    }
    return orElse();
  }
}

abstract class _StartSearch implements MoorEvent {
  const factory _StartSearch() = _$_StartSearch;
}

abstract class _$StopSearchCopyWith<$Res> {
  factory _$StopSearchCopyWith(
          _StopSearch value, $Res Function(_StopSearch) then) =
      __$StopSearchCopyWithImpl<$Res>;
}

class __$StopSearchCopyWithImpl<$Res> extends _$MoorEventCopyWithImpl<$Res>
    implements _$StopSearchCopyWith<$Res> {
  __$StopSearchCopyWithImpl(
      _StopSearch _value, $Res Function(_StopSearch) _then)
      : super(_value, (v) => _then(v as _StopSearch));

  @override
  _StopSearch get _value => super._value as _StopSearch;
}

class _$_StopSearch implements _StopSearch {
  const _$_StopSearch();

  @override
  String toString() {
    return 'MoorEvent.stopSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StopSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return stopSearch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopSearch != null) {
      return stopSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return stopSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopSearch != null) {
      return stopSearch(this);
    }
    return orElse();
  }
}

abstract class _StopSearch implements MoorEvent {
  const factory _StopSearch() = _$_StopSearch;
}

abstract class _$SubmitSearchCopyWith<$Res> {
  factory _$SubmitSearchCopyWith(
          _SubmitSearch value, $Res Function(_SubmitSearch) then) =
      __$SubmitSearchCopyWithImpl<$Res>;
  $Res call({String query});
}

class __$SubmitSearchCopyWithImpl<$Res> extends _$MoorEventCopyWithImpl<$Res>
    implements _$SubmitSearchCopyWith<$Res> {
  __$SubmitSearchCopyWithImpl(
      _SubmitSearch _value, $Res Function(_SubmitSearch) _then)
      : super(_value, (v) => _then(v as _SubmitSearch));

  @override
  _SubmitSearch get _value => super._value as _SubmitSearch;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_SubmitSearch(
      query == freezed ? _value.query : query as String,
    ));
  }
}

class _$_SubmitSearch implements _SubmitSearch {
  const _$_SubmitSearch(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'MoorEvent.submitSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitSearch &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$SubmitSearchCopyWith<_SubmitSearch> get copyWith =>
      __$SubmitSearchCopyWithImpl<_SubmitSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insert(BankDao dao, Bank bank),
    @required Result delete(BankDao dao, Bank bank),
    @required Result startSearch(),
    @required Result stopSearch(),
    @required Result submitSearch(String query),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return submitSearch(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insert(BankDao dao, Bank bank),
    Result delete(BankDao dao, Bank bank),
    Result startSearch(),
    Result stopSearch(),
    Result submitSearch(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitSearch != null) {
      return submitSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insert(_Insert value),
    @required Result delete(_Delete value),
    @required Result startSearch(_StartSearch value),
    @required Result stopSearch(_StopSearch value),
    @required Result submitSearch(_SubmitSearch value),
  }) {
    assert(insert != null);
    assert(delete != null);
    assert(startSearch != null);
    assert(stopSearch != null);
    assert(submitSearch != null);
    return submitSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insert(_Insert value),
    Result delete(_Delete value),
    Result startSearch(_StartSearch value),
    Result stopSearch(_StopSearch value),
    Result submitSearch(_SubmitSearch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitSearch != null) {
      return submitSearch(this);
    }
    return orElse();
  }
}

abstract class _SubmitSearch implements MoorEvent {
  const factory _SubmitSearch(String query) = _$_SubmitSearch;

  String get query;
  _$SubmitSearchCopyWith<_SubmitSearch> get copyWith;
}

class _$MoorStateTearOff {
  const _$MoorStateTearOff();

// ignore: unused_element
  _MoorState call({@required bool isSearching, @required String query}) {
    return _MoorState(
      isSearching: isSearching,
      query: query,
    );
  }
}

// ignore: unused_element
const $MoorState = _$MoorStateTearOff();

mixin _$MoorState {
  bool get isSearching;
  String get query;

  $MoorStateCopyWith<MoorState> get copyWith;
}

abstract class $MoorStateCopyWith<$Res> {
  factory $MoorStateCopyWith(MoorState value, $Res Function(MoorState) then) =
      _$MoorStateCopyWithImpl<$Res>;
  $Res call({bool isSearching, String query});
}

class _$MoorStateCopyWithImpl<$Res> implements $MoorStateCopyWith<$Res> {
  _$MoorStateCopyWithImpl(this._value, this._then);

  final MoorState _value;
  // ignore: unused_field
  final $Res Function(MoorState) _then;

  @override
  $Res call({
    Object isSearching = freezed,
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

abstract class _$MoorStateCopyWith<$Res> implements $MoorStateCopyWith<$Res> {
  factory _$MoorStateCopyWith(
          _MoorState value, $Res Function(_MoorState) then) =
      __$MoorStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isSearching, String query});
}

class __$MoorStateCopyWithImpl<$Res> extends _$MoorStateCopyWithImpl<$Res>
    implements _$MoorStateCopyWith<$Res> {
  __$MoorStateCopyWithImpl(_MoorState _value, $Res Function(_MoorState) _then)
      : super(_value, (v) => _then(v as _MoorState));

  @override
  _MoorState get _value => super._value as _MoorState;

  @override
  $Res call({
    Object isSearching = freezed,
    Object query = freezed,
  }) {
    return _then(_MoorState(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$_MoorState implements _MoorState {
  const _$_MoorState({@required this.isSearching, @required this.query})
      : assert(isSearching != null),
        assert(query != null);

  @override
  final bool isSearching;
  @override
  final String query;

  @override
  String toString() {
    return 'MoorState(isSearching: $isSearching, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoorState &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(query);

  @override
  _$MoorStateCopyWith<_MoorState> get copyWith =>
      __$MoorStateCopyWithImpl<_MoorState>(this, _$identity);
}

abstract class _MoorState implements MoorState {
  const factory _MoorState(
      {@required bool isSearching, @required String query}) = _$_MoorState;

  @override
  bool get isSearching;
  @override
  String get query;
  @override
  _$MoorStateCopyWith<_MoorState> get copyWith;
}
