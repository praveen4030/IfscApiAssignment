import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_bank.g.dart';

abstract class BuiltBank implements Built<BuiltBank, BuiltBankBuilder> {
  @BuiltValueField(wireName: 'BANK')
  String get bank;

  @BuiltValueField(wireName: 'IFSC')
  String get ifsc;

  @BuiltValueField(wireName: 'BRANCH')
  String get branch;

  @BuiltValueField(wireName: 'ADDRESS')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'CONTACT')
  String get contact;

  @BuiltValueField(wireName: 'CITY')
  String get city;

  @BuiltValueField(wireName: 'RTGS')
  bool get rtgs;

  @BuiltValueField(wireName: 'DISTRICT')
  String get district;

  @BuiltValueField(wireName: 'STATE')
  String get state;

  BuiltBank._();

  factory BuiltBank([updates(BuiltBankBuilder b)]) = _$BuiltBank;

  static Serializer<BuiltBank> get serializer => _$builtBankSerializer;
}
