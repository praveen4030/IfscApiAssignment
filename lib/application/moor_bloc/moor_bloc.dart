import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:wednesday_assignment/moor_data/moor_database.dart';

part 'moor_event.dart';
part 'moor_state.dart';
part 'moor_bloc.freezed.dart';

@injectable
class MoorBloc extends Bloc<MoorEvent, MoorState> {
  MoorBloc() : super(MoorState.initial());

  @override
  Stream<MoorState> mapEventToState(
    MoorEvent event,
  ) async* {
    yield* event.map(
      insert: (e) async* {
        final bank = e.bank;
        final dao = e.dao;

        final bankComp = BanksCompanion(
          branch: Value(bank.branch),
          ifsc: Value(bank.ifsc),
          state: Value(
            bank.state,
          ),
          district: Value(bank.district),
          rtgs: Value(bank.rtgs),
          contact: Value(bank.contact),
          address: Value(bank.address),
          bank: Value(bank.bank),
          city: Value(bank.city),
        );

        dao.insertBank(bankComp).catchError((e) {
          print(e.toString());
        });
      },
      delete: (e) async* {
        final dao = e.dao;
        final bank = e.bank;
        dao.deleteBank(bank).catchError((e) {
          print(e.toString());
        });
      },
      startSearch: (e) async* {
        yield state.copyWith(
          isSearching : true,
        );
      },
      stopSearch: (e) async* {
        yield state.copyWith(
          isSearching : false,
          query : '',
        );
      },
      submitSearch: (e) async* {
        yield state.copyWith(
          query : e.query,
        );
      },
    );
  }
}
