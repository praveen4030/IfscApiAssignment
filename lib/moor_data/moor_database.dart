import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Banks extends Table {

  TextColumn get bank => text().withLength(min: 1)();
  TextColumn get ifsc => text().withLength(min: 1)();

  TextColumn get contact => text()
      .withLength(
        min: 1,
      )
      .nullable()();
  TextColumn get branch => text().withLength(min: 1)();
  TextColumn get address => text().withLength(min: 1)();
  TextColumn get city => text().withLength(min: 1)();
  BoolColumn get rtgs => boolean().withDefault(Constant(false))();
  TextColumn get district => text().withLength(min: 1)();
  TextColumn get state => text().withLength(min: 1)();

  @override
  Set<Column> get primaryKey => {ifsc};
}

@injectable
@UseMoor(tables: [Banks], daos: [BankDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
              path: 'd.sqlite', logStatements: true),
        );

  @override
  int get schemaVersion => 1;
}

@UseDao(tables: [Banks])
class BankDao extends DatabaseAccessor<AppDatabase> with _$BankDaoMixin {
  final AppDatabase db;
  BankDao(this.db) : super(db);

  Future<List<Bank>> getAllBanks() => select(banks).get();

  Stream<List<Bank>> watchFavouriteBanks() {
    return (select(banks)
          ..orderBy([
            (t) => OrderingTerm(expression: t.bank),
          ]))
        .watch();
  }

  Future insertBank(Insertable<Bank> bank) =>
      into(banks).insert(bank,mode: InsertMode.insertOrReplace);
  Future updateBank(Insertable<Bank> bank) => update(banks).replace(bank);
  Future deleteBank(Insertable<Bank> bank) => delete(banks).delete(bank);
}
