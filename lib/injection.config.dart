// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'moor_data/moor_database.dart';
import 'data/ifsc_api_service.dart';
import 'application/moor_bloc/moor_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<AppDatabase>(() => AppDatabase());
  gh.factory<IfscApiService>(() => IfscApiService.create());
  gh.factory<MoorBloc>(() => MoorBloc());
  return get;
}
