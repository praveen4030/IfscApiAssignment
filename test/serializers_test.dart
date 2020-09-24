import 'package:flutter_test/flutter_test.dart';
import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:wednesday_assignment/model/serializers.dart';
import 'dart:convert';

void main() {
  test('Check serializable testing', () {
    const jsonStr =
        """{"BRANCH":"REC JALANDHAR","CENTRE":"JALANDHAR","DISTRICT":"JALANDHAR","STATE":"PUNJAB","ADDRESS":"REGIONAL ENGINEERING COLLEGE JALANDHAR","CONTACT":"02690695","MICR":"335002017","UPI":true,"RTGS":true,"CITY":"JALANDHAR","MICR CODE":"144002065","STD CODE":"0","NEFT":true,"IMPS":true,"BANK":"State Bank of India","BANKCODE":"SBIN","IFSC":"SBIN0050841"}""";

    BuiltBank bank = serializers
        .deserializeWith(
            serializers.serializerForType(BuiltBank), json.decode(jsonStr));
        
    expect(bank.branch, "REC JALANDHAR");
    expect(bank.district, "JALANDHAR");
    expect(bank.state, "PUNJAB");
  });
}
