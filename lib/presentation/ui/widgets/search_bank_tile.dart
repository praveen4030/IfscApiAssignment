import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wednesday_assignment/data/conversions.dart';
import 'package:wednesday_assignment/data/ifsc_api_service.dart';
import 'package:wednesday_assignment/model/built_bank.dart';
import 'package:wednesday_assignment/presentation/ui/widgets/bank_tile.dart';

class SearchBankTile extends StatelessWidget {
  
  final String query;
  const SearchBankTile({Key key, @required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response<BuiltBank>>(
      future: Provider.of<IfscApiService>(context).getBank(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final builtBank = snapshot.data.body;
          return builtBank != null
              ? BankTile(
                  bank: convertBuiltBankToBank(builtBank),
                  type: BankTileType.normal,
                )
              : _empty();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _empty() {
    return Center(
      child: Text('No details found! Please recheck your IFSC Code'),
    );
  }
}
