import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:wednesday_assignment/moor_data/moor_database.dart';

Bank convertBuiltBankToBank(BuiltBank bank) {
  return Bank(
    address: bank.address,
    branch: bank.branch,
    bank: bank.bank,
    city: bank.city,
    district: bank.district,
    ifsc: bank.ifsc,
    rtgs: bank.rtgs,
    state: bank.state,
  );
}
