import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wednesday_assignment/application/moor_bloc/moor_bloc.dart';
import 'package:wednesday_assignment/injection.dart';

import 'package:wednesday_assignment/moor_data/moor_database.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'package:wednesday_assignment/presentation/routes/route.gr.dart'
    as route;
import 'package:wednesday_assignment/presentation/ui/widgets/search_bank_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final TextEditingController _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoorBloc>(),
      child: BlocBuilder<MoorBloc, MoorState>(builder: (context, state) {
        return Provider(
            create: (context) => getIt<AppDatabase>().bankDao,
            builder: (context, child) {
              return Scaffold(
                appBar: AppBar(
                  title: state.isSearching
                      ? _buildSearchField(context)
                      : Text(
                          'Wednesday Assignment',
                        ),
                  actions: _buildActions(context, state),
                ),
                body: _buildBody(context, state),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    extend.ExtendedNavigator.of(context)
                        .push(route.Routes.favouriteBanks);
                  },
                  child: Icon(Icons.favorite_outline_rounded),
                ),
              );
            });
      }),
    );
  }

  _buildBody(BuildContext context, MoorState state) {
    if (state.query.isNotEmpty) {
      return SearchBankTile(query: state.query);
    } else {
      return Center(
        child: Text('Search with IFSC Code for your bank information'),
      );
    }
  }



  Widget _buildSearchField(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search...",
        hintStyle: TextStyle(color: Colors.white),
        border: InputBorder.none,
      ),
      onSubmitted: (query) => context
          .bloc<MoorBloc>()
          .add(MoorEvent.submitSearch(_searchQueryController.text)),
    );
  }

  List<Widget> _buildActions(BuildContext context, MoorState state) {
    if (state.isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            context.bloc<MoorBloc>().add(MoorEvent.stopSearch());
            _searchQueryController.clear();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () => context.bloc<MoorBloc>().add(MoorEvent.startSearch()),
      ),
    ];
  }
}
