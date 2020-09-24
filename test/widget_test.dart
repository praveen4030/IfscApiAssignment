import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wednesday_assignment/data/conversions.dart';
import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:wednesday_assignment/model/serializers.dart';
import 'package:wednesday_assignment/presentation/ui/widgets/bank_tile.dart';

void main() {
  testWidgets('Test the bank details widget', (WidgetTester tester) async {
    const jsonStr =
        """{"BRANCH":"REC JALANDHAR","CENTRE":"JALANDHAR","DISTRICT":"JALANDHAR","STATE":"PUNJAB","ADDRESS":"REGIONAL ENGINEERING COLLEGE JALANDHAR","CONTACT":"02690695","MICR":"335002017","UPI":true,"RTGS":true,"CITY":"JALANDHAR","MICR CODE":"144002065","STD CODE":"0","NEFT":true,"IMPS":true,"BANK":"State Bank of India","BANKCODE":"SBIN","IFSC":"SBIN0050841"}""";

    BuiltBank bank = serializers.deserializeWith(
        serializers.serializerForType(BuiltBank), json.decode(jsonStr));

    await tester.pumpWidget(
      MaterialApp(
        home : Material(
          child: BankTile(bank: convertBuiltBankToBank(bank),type: BankTileType.normal,),
        )
      )
    );

    expect(find.text("BRANCH : REC JALANDHAR"), findsOneWidget);
    expect(find.text("RTGS : true"), findsOneWidget);

    await tester.pumpWidget(
      MaterialApp(
        home : Material(
          child: BankTile(bank: convertBuiltBankToBank(bank),type: BankTileType.favourite,),
        )
      )
    );

    expect(find.text("BRANCH : REC JALANDHAR"), findsOneWidget);
    expect(find.text("RTGS : true"), findsOneWidget);

  });
}
