import 'package:auto_route/auto_route_annotations.dart';
import 'package:wednesday_assignment/main.dart';
import 'package:wednesday_assignment/presentation/ui/favourite_banks.dart';
import 'package:wednesday_assignment/presentation/ui/home_page.dart';


@MaterialAutoRouter(
  routes : <AutoRoute>[
    MaterialRoute(page: HomePage,initial: true),
    MaterialRoute(page: FavouriteBanks),
  ]
)

class $Router {}
