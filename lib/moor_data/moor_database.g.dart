// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Bank extends DataClass implements Insertable<Bank> {
  final String bank;
  final String ifsc;
  final String contact;
  final String branch;
  final String address;
  final String city;
  final bool rtgs;
  final String district;
  final String state;
  Bank(
      {@required this.bank,
      @required this.ifsc,
      this.contact,
      @required this.branch,
      @required this.address,
      @required this.city,
      @required this.rtgs,
      @required this.district,
      @required this.state});
  factory Bank.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Bank(
      bank: stringType.mapFromDatabaseResponse(data['${effectivePrefix}bank']),
      ifsc: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ifsc']),
      contact:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}contact']),
      branch:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}branch']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      rtgs: boolType.mapFromDatabaseResponse(data['${effectivePrefix}rtgs']),
      district: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}district']),
      state:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}state']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || bank != null) {
      map['bank'] = Variable<String>(bank);
    }
    if (!nullToAbsent || ifsc != null) {
      map['ifsc'] = Variable<String>(ifsc);
    }
    if (!nullToAbsent || contact != null) {
      map['contact'] = Variable<String>(contact);
    }
    if (!nullToAbsent || branch != null) {
      map['branch'] = Variable<String>(branch);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || rtgs != null) {
      map['rtgs'] = Variable<bool>(rtgs);
    }
    if (!nullToAbsent || district != null) {
      map['district'] = Variable<String>(district);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    return map;
  }

  BanksCompanion toCompanion(bool nullToAbsent) {
    return BanksCompanion(
      bank: bank == null && nullToAbsent ? const Value.absent() : Value(bank),
      ifsc: ifsc == null && nullToAbsent ? const Value.absent() : Value(ifsc),
      contact: contact == null && nullToAbsent
          ? const Value.absent()
          : Value(contact),
      branch:
          branch == null && nullToAbsent ? const Value.absent() : Value(branch),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      rtgs: rtgs == null && nullToAbsent ? const Value.absent() : Value(rtgs),
      district: district == null && nullToAbsent
          ? const Value.absent()
          : Value(district),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
    );
  }

  factory Bank.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Bank(
      bank: serializer.fromJson<String>(json['bank']),
      ifsc: serializer.fromJson<String>(json['ifsc']),
      contact: serializer.fromJson<String>(json['contact']),
      branch: serializer.fromJson<String>(json['branch']),
      address: serializer.fromJson<String>(json['address']),
      city: serializer.fromJson<String>(json['city']),
      rtgs: serializer.fromJson<bool>(json['rtgs']),
      district: serializer.fromJson<String>(json['district']),
      state: serializer.fromJson<String>(json['state']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bank': serializer.toJson<String>(bank),
      'ifsc': serializer.toJson<String>(ifsc),
      'contact': serializer.toJson<String>(contact),
      'branch': serializer.toJson<String>(branch),
      'address': serializer.toJson<String>(address),
      'city': serializer.toJson<String>(city),
      'rtgs': serializer.toJson<bool>(rtgs),
      'district': serializer.toJson<String>(district),
      'state': serializer.toJson<String>(state),
    };
  }

  Bank copyWith(
          {String bank,
          String ifsc,
          String contact,
          String branch,
          String address,
          String city,
          bool rtgs,
          String district,
          String state}) =>
      Bank(
        bank: bank ?? this.bank,
        ifsc: ifsc ?? this.ifsc,
        contact: contact ?? this.contact,
        branch: branch ?? this.branch,
        address: address ?? this.address,
        city: city ?? this.city,
        rtgs: rtgs ?? this.rtgs,
        district: district ?? this.district,
        state: state ?? this.state,
      );
  @override
  String toString() {
    return (StringBuffer('Bank(')
          ..write('bank: $bank, ')
          ..write('ifsc: $ifsc, ')
          ..write('contact: $contact, ')
          ..write('branch: $branch, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('rtgs: $rtgs, ')
          ..write('district: $district, ')
          ..write('state: $state')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bank.hashCode,
      $mrjc(
          ifsc.hashCode,
          $mrjc(
              contact.hashCode,
              $mrjc(
                  branch.hashCode,
                  $mrjc(
                      address.hashCode,
                      $mrjc(
                          city.hashCode,
                          $mrjc(rtgs.hashCode,
                              $mrjc(district.hashCode, state.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Bank &&
          other.bank == this.bank &&
          other.ifsc == this.ifsc &&
          other.contact == this.contact &&
          other.branch == this.branch &&
          other.address == this.address &&
          other.city == this.city &&
          other.rtgs == this.rtgs &&
          other.district == this.district &&
          other.state == this.state);
}

class BanksCompanion extends UpdateCompanion<Bank> {
  final Value<String> bank;
  final Value<String> ifsc;
  final Value<String> contact;
  final Value<String> branch;
  final Value<String> address;
  final Value<String> city;
  final Value<bool> rtgs;
  final Value<String> district;
  final Value<String> state;
  const BanksCompanion({
    this.bank = const Value.absent(),
    this.ifsc = const Value.absent(),
    this.contact = const Value.absent(),
    this.branch = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.rtgs = const Value.absent(),
    this.district = const Value.absent(),
    this.state = const Value.absent(),
  });
  BanksCompanion.insert({
    @required String bank,
    @required String ifsc,
    this.contact = const Value.absent(),
    @required String branch,
    @required String address,
    @required String city,
    this.rtgs = const Value.absent(),
    @required String district,
    @required String state,
  })  : bank = Value(bank),
        ifsc = Value(ifsc),
        branch = Value(branch),
        address = Value(address),
        city = Value(city),
        district = Value(district),
        state = Value(state);
  static Insertable<Bank> custom({
    Expression<String> bank,
    Expression<String> ifsc,
    Expression<String> contact,
    Expression<String> branch,
    Expression<String> address,
    Expression<String> city,
    Expression<bool> rtgs,
    Expression<String> district,
    Expression<String> state,
  }) {
    return RawValuesInsertable({
      if (bank != null) 'bank': bank,
      if (ifsc != null) 'ifsc': ifsc,
      if (contact != null) 'contact': contact,
      if (branch != null) 'branch': branch,
      if (address != null) 'address': address,
      if (city != null) 'city': city,
      if (rtgs != null) 'rtgs': rtgs,
      if (district != null) 'district': district,
      if (state != null) 'state': state,
    });
  }

  BanksCompanion copyWith(
      {Value<String> bank,
      Value<String> ifsc,
      Value<String> contact,
      Value<String> branch,
      Value<String> address,
      Value<String> city,
      Value<bool> rtgs,
      Value<String> district,
      Value<String> state}) {
    return BanksCompanion(
      bank: bank ?? this.bank,
      ifsc: ifsc ?? this.ifsc,
      contact: contact ?? this.contact,
      branch: branch ?? this.branch,
      address: address ?? this.address,
      city: city ?? this.city,
      rtgs: rtgs ?? this.rtgs,
      district: district ?? this.district,
      state: state ?? this.state,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bank.present) {
      map['bank'] = Variable<String>(bank.value);
    }
    if (ifsc.present) {
      map['ifsc'] = Variable<String>(ifsc.value);
    }
    if (contact.present) {
      map['contact'] = Variable<String>(contact.value);
    }
    if (branch.present) {
      map['branch'] = Variable<String>(branch.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (rtgs.present) {
      map['rtgs'] = Variable<bool>(rtgs.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BanksCompanion(')
          ..write('bank: $bank, ')
          ..write('ifsc: $ifsc, ')
          ..write('contact: $contact, ')
          ..write('branch: $branch, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('rtgs: $rtgs, ')
          ..write('district: $district, ')
          ..write('state: $state')
          ..write(')'))
        .toString();
  }
}

class $BanksTable extends Banks with TableInfo<$BanksTable, Bank> {
  final GeneratedDatabase _db;
  final String _alias;
  $BanksTable(this._db, [this._alias]);
  final VerificationMeta _bankMeta = const VerificationMeta('bank');
  GeneratedTextColumn _bank;
  @override
  GeneratedTextColumn get bank => _bank ??= _constructBank();
  GeneratedTextColumn _constructBank() {
    return GeneratedTextColumn('bank', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _ifscMeta = const VerificationMeta('ifsc');
  GeneratedTextColumn _ifsc;
  @override
  GeneratedTextColumn get ifsc => _ifsc ??= _constructIfsc();
  GeneratedTextColumn _constructIfsc() {
    return GeneratedTextColumn('ifsc', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _contactMeta = const VerificationMeta('contact');
  GeneratedTextColumn _contact;
  @override
  GeneratedTextColumn get contact => _contact ??= _constructContact();
  GeneratedTextColumn _constructContact() {
    return GeneratedTextColumn('contact', $tableName, true, minTextLength: 1);
  }

  final VerificationMeta _branchMeta = const VerificationMeta('branch');
  GeneratedTextColumn _branch;
  @override
  GeneratedTextColumn get branch => _branch ??= _constructBranch();
  GeneratedTextColumn _constructBranch() {
    return GeneratedTextColumn('branch', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn('address', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn('city', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _rtgsMeta = const VerificationMeta('rtgs');
  GeneratedBoolColumn _rtgs;
  @override
  GeneratedBoolColumn get rtgs => _rtgs ??= _constructRtgs();
  GeneratedBoolColumn _constructRtgs() {
    return GeneratedBoolColumn('rtgs', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _districtMeta = const VerificationMeta('district');
  GeneratedTextColumn _district;
  @override
  GeneratedTextColumn get district => _district ??= _constructDistrict();
  GeneratedTextColumn _constructDistrict() {
    return GeneratedTextColumn('district', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _stateMeta = const VerificationMeta('state');
  GeneratedTextColumn _state;
  @override
  GeneratedTextColumn get state => _state ??= _constructState();
  GeneratedTextColumn _constructState() {
    return GeneratedTextColumn('state', $tableName, false, minTextLength: 1);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [bank, ifsc, contact, branch, address, city, rtgs, district, state];
  @override
  $BanksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'banks';
  @override
  final String actualTableName = 'banks';
  @override
  VerificationContext validateIntegrity(Insertable<Bank> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('bank')) {
      context.handle(
          _bankMeta, bank.isAcceptableOrUnknown(data['bank'], _bankMeta));
    } else if (isInserting) {
      context.missing(_bankMeta);
    }
    if (data.containsKey('ifsc')) {
      context.handle(
          _ifscMeta, ifsc.isAcceptableOrUnknown(data['ifsc'], _ifscMeta));
    } else if (isInserting) {
      context.missing(_ifscMeta);
    }
    if (data.containsKey('contact')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['contact'], _contactMeta));
    }
    if (data.containsKey('branch')) {
      context.handle(_branchMeta,
          branch.isAcceptableOrUnknown(data['branch'], _branchMeta));
    } else if (isInserting) {
      context.missing(_branchMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address'], _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city'], _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('rtgs')) {
      context.handle(
          _rtgsMeta, rtgs.isAcceptableOrUnknown(data['rtgs'], _rtgsMeta));
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district'], _districtMeta));
    } else if (isInserting) {
      context.missing(_districtMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state'], _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ifsc};
  @override
  Bank map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Bank.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $BanksTable createAlias(String alias) {
    return $BanksTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $BanksTable _banks;
  $BanksTable get banks => _banks ??= $BanksTable(this);
  BankDao _bankDao;
  BankDao get bankDao => _bankDao ??= BankDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [banks];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BankDaoMixin on DatabaseAccessor<AppDatabase> {
  $BanksTable get banks => attachedDatabase.banks;
}
