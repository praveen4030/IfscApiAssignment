import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wednesday_assignment/application/moor_bloc/moor_bloc.dart';
import 'package:wednesday_assignment/moor_data/moor_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum BankTileType { normal, favourite }

class BankTile extends StatelessWidget {
  final Bank bank;
  final BankTileType type;

  const BankTile({
    Key key,
    @required this.bank,
    @required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      child: ListView(
        shrinkWrap: true,
        physics : NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              bank.bank,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {
                type == BankTileType.favourite
                    ? deleteFromDatabase(context)
                    : insertToDatabase(context);
              },
              icon: Icon(Icons.favorite_outline_rounded),
            ),
          ),
          Text('BRANCH : ${bank.branch}'),
          Text('IFSC : ${bank.ifsc}'),
          Text('ADDRESS : ${bank.address}'),
          Text('CONTACT : ${bank.contact}'),
          Text('CITY : ${bank.city}'),
          Text('DISTRICT : ${bank.district}'),
          Text('STATE : ${bank.state}'),
          Text('RTGS : ${bank.rtgs}'),
        ],
      ),
    );
  }

  insertToDatabase(BuildContext context) {
    final dao = Provider.of<BankDao>(context, listen: false);
    context.bloc<MoorBloc>().add(MoorEvent.insert(dao, bank));
  }

  deleteFromDatabase(BuildContext context) {
    final dao = Provider.of<BankDao>(context, listen: false);
    context.bloc<MoorBloc>().add(MoorEvent.delete(dao, bank));
  }
}
