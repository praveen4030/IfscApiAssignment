import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wednesday_assignment/application/moor_bloc/moor_bloc.dart';
import 'package:wednesday_assignment/data/conversions.dart';
import 'package:wednesday_assignment/moor_data/moor_database.dart';
import 'package:wednesday_assignment/presentation/ui/widgets/bank_tile.dart';

import '../../injection.dart';

class FavouriteBanks extends StatelessWidget {
  const FavouriteBanks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppDatabase().bankDao,
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text('Favourite Banks'),
        ),
        body: _buildBankList(context),
      ),
    );
  }

  _buildBankList(BuildContext context) {
    final dao = Provider.of<BankDao>(context, listen: false);
    return BlocProvider(
      create: (context) => getIt<MoorBloc>(),
      child: BlocBuilder<MoorBloc, MoorState>(
        builder: (context, state) {
          return StreamBuilder(
            stream: dao.watchFavouriteBanks(),
            builder: (context, AsyncSnapshot<List<Bank>> snapshot) {
              final banks = snapshot.data ?? List();
              return ListView.builder(
                itemCount: banks.length,
                itemBuilder: (_, index) {
                  final Bank bank = banks[index];
                  return BankTile(bank: bank, type: BankTileType.favourite);
                },
              );
            },
          );
        },
      ),
    );
  }
}
