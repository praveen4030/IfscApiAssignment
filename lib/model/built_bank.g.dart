// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_bank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBank> _$builtBankSerializer = new _$BuiltBankSerializer();

class _$BuiltBankSerializer implements StructuredSerializer<BuiltBank> {
  @override
  final Iterable<Type> types = const [BuiltBank, _$BuiltBank];
  @override
  final String wireName = 'BuiltBank';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltBank object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'BANK',
      serializers.serialize(object.bank, specifiedType: const FullType(String)),
      'IFSC',
      serializers.serialize(object.ifsc, specifiedType: const FullType(String)),
      'BRANCH',
      serializers.serialize(object.branch,
          specifiedType: const FullType(String)),
      'ADDRESS',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'CITY',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'RTGS',
      serializers.serialize(object.rtgs, specifiedType: const FullType(bool)),
      'DISTRICT',
      serializers.serialize(object.district,
          specifiedType: const FullType(String)),
      'STATE',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];
    if (object.contact != null) {
      result
        ..add('CONTACT')
        ..add(serializers.serialize(object.contact,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltBank deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBankBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'BANK':
          result.bank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'IFSC':
          result.ifsc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'BRANCH':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ADDRESS':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CONTACT':
          result.contact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CITY':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'RTGS':
          result.rtgs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'DISTRICT':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'STATE':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltBank extends BuiltBank {
  @override
  final String bank;
  @override
  final String ifsc;
  @override
  final String branch;
  @override
  final String address;
  @override
  final String contact;
  @override
  final String city;
  @override
  final bool rtgs;
  @override
  final String district;
  @override
  final String state;

  factory _$BuiltBank([void Function(BuiltBankBuilder) updates]) =>
      (new BuiltBankBuilder()..update(updates)).build();

  _$BuiltBank._(
      {this.bank,
      this.ifsc,
      this.branch,
      this.address,
      this.contact,
      this.city,
      this.rtgs,
      this.district,
      this.state})
      : super._() {
    if (bank == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'bank');
    }
    if (ifsc == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'ifsc');
    }
    if (branch == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'branch');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'address');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'city');
    }
    if (rtgs == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'rtgs');
    }
    if (district == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'district');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('BuiltBank', 'state');
    }
  }

  @override
  BuiltBank rebuild(void Function(BuiltBankBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBankBuilder toBuilder() => new BuiltBankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBank &&
        bank == other.bank &&
        ifsc == other.ifsc &&
        branch == other.branch &&
        address == other.address &&
        contact == other.contact &&
        city == other.city &&
        rtgs == other.rtgs &&
        district == other.district &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, bank.hashCode), ifsc.hashCode),
                                branch.hashCode),
                            address.hashCode),
                        contact.hashCode),
                    city.hashCode),
                rtgs.hashCode),
            district.hashCode),
        state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBank')
          ..add('bank', bank)
          ..add('ifsc', ifsc)
          ..add('branch', branch)
          ..add('address', address)
          ..add('contact', contact)
          ..add('city', city)
          ..add('rtgs', rtgs)
          ..add('district', district)
          ..add('state', state))
        .toString();
  }
}

class BuiltBankBuilder implements Builder<BuiltBank, BuiltBankBuilder> {
  _$BuiltBank _$v;

  String _bank;
  String get bank => _$this._bank;
  set bank(String bank) => _$this._bank = bank;

  String _ifsc;
  String get ifsc => _$this._ifsc;
  set ifsc(String ifsc) => _$this._ifsc = ifsc;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _contact;
  String get contact => _$this._contact;
  set contact(String contact) => _$this._contact = contact;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  bool _rtgs;
  bool get rtgs => _$this._rtgs;
  set rtgs(bool rtgs) => _$this._rtgs = rtgs;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  BuiltBankBuilder();

  BuiltBankBuilder get _$this {
    if (_$v != null) {
      _bank = _$v.bank;
      _ifsc = _$v.ifsc;
      _branch = _$v.branch;
      _address = _$v.address;
      _contact = _$v.contact;
      _city = _$v.city;
      _rtgs = _$v.rtgs;
      _district = _$v.district;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBank other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBank;
  }

  @override
  void update(void Function(BuiltBankBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBank build() {
    final _$result = _$v ??
        new _$BuiltBank._(
            bank: bank,
            ifsc: ifsc,
            branch: branch,
            address: address,
            contact: contact,
            city: city,
            rtgs: rtgs,
            district: district,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
