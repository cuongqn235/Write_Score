// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:sqflite/sqflite.dart' as _i3;

import '../core/application/repository/game/game_repository.dart' as _i15;
import '../core/application/repository/game/i_game_repository.dart' as _i14;
import '../data/local_datasource/app/app_local_datasource.dart' as _i13;
import '../data/local_datasource/app/i_app_local_datasource.dart' as _i12;
import '../data/local_datasource/common/local_module.dart' as _i19;
import '../data/local_datasource/game/game_dao.dart' as _i5;
import '../data/local_datasource/player/player_dao.dart' as _i8;
import '../data/local_datasource/round/round_dao.dart' as _i9;
import '../data/local_datasource/score/score_dao.dart' as _i10;
import '../data/remote_datasource/api_service.dart' as _i6;
import '../data/remote_datasource/network_module.dart' as _i20;
import '../feature/app/application/app/app_bloc.dart' as _i16;
import '../feature/app/application/initial/initial_cubit.dart' as _i7;
import '../feature/home/application/home_bloc.dart' as _i18;
import '../feature/home/feature/game/application/game_bloc.dart' as _i17;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final localModule = _$LocalModule();
  final networkModule = _$NetworkModule();
  await gh.factoryAsync<_i3.Database>(
    () => localModule.sqlite,
    preResolve: true,
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioGoogleMap,
    instanceName: 'googleMapDio',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioDownloadImage,
    instanceName: 'downloadImageDio',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioDefault,
    instanceName: 'defaultDio',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioAuth,
    instanceName: 'authDio',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioToken,
    instanceName: 'tokenDio',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioNotification,
    instanceName: 'dioNotification',
  );
  gh.factory<_i4.Dio>(
    () => networkModule.dioSetting,
    instanceName: 'settingDio',
  );
  gh.singleton<_i5.GameDao>(_i5.GameDao(sqlite: gh<_i3.Database>()));
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.AuthApiService(gh<_i4.Dio>(instanceName: 'authDio')),
    instanceName: 'AuthApiService',
  );
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.TokenApiService(gh<_i4.Dio>(instanceName: 'tokenDio')),
    instanceName: 'TokenApiService',
  );
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.DefaultApiService(gh<_i4.Dio>(instanceName: 'defaultDio')),
    instanceName: 'DefaultApiService',
  );
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.NotificationApiService(
        gh<_i4.Dio>(instanceName: 'dioNotification')),
    instanceName: 'NotificationApiService',
  );
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.GoogleMapApiService(gh<_i4.Dio>(instanceName: 'googleMapDio')),
    instanceName: 'GoogleMapApiService',
  );
  gh.lazySingleton<_i6.IApiService>(
    () => _i6.SettingApiService(gh<_i4.Dio>(instanceName: 'settingDio')),
    instanceName: 'SettingApiService',
  );
  gh.factory<_i7.InitialCubit>(() => _i7.InitialCubit());
  gh.singleton<_i8.PlayerDao>(_i8.PlayerDao(sqlite: gh<_i3.Database>()));
  gh.singleton<_i9.RoundDao>(_i9.RoundDao(sqlite: gh<_i3.Database>()));
  gh.singleton<_i10.ScoreDao>(_i10.ScoreDao(sqlite: gh<_i3.Database>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => localModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(
    () => networkModule.baseUrl,
    instanceName: 'baseUrl',
  );
  gh.factory<String>(
    () => networkModule.notificationUrl,
    instanceName: 'notificationUrl',
  );
  gh.factory<String>(
    () => networkModule.googleMapUrl,
    instanceName: 'googleMapUrl',
  );
  gh.factory<String>(
    () => networkModule.webSocketUrl,
    instanceName: 'webSocketUrl',
  );
  gh.lazySingleton<_i12.IAppLocalDatasource>(
      () => _i13.AppLocalDatasource(gh<_i11.SharedPreferences>()));
  gh.singleton<_i14.IGameRepository>(_i15.GameRepository(
    gh<_i5.GameDao>(),
    gh<_i8.PlayerDao>(),
    gh<_i9.RoundDao>(),
    gh<_i10.ScoreDao>(),
  ));
  gh.factory<_i16.AppBloc>(() => _i16.AppBloc(gh<_i12.IAppLocalDatasource>()));
  gh.factory<_i17.GameBloc>(() => _i17.GameBloc(gh<_i14.IGameRepository>()));
  gh.factory<_i18.HomeBloc>(() => _i18.HomeBloc(gh<_i14.IGameRepository>()));
  return getIt;
}

class _$LocalModule extends _i19.LocalModule {}

class _$NetworkModule extends _i20.NetworkModule {}
