import 'dart:async';

import 'package:write_score/data/local_datasource/app/i_app_local_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(this._appLocalDatasource) : super(const AppState()) {
    on<AppEventInitial>(_initial);
    on<AppEventEndOnboard>(_endOnBoard);
  }
  final IAppLocalDatasource _appLocalDatasource;
  FutureOr<void> _initial(AppEventInitial event, Emitter<AppState> emit) async {
    await Future.delayed(const Duration(seconds: 1));

    final isFirstLaunch = _appLocalDatasource.isFirstLaunch;

    if (isFirstLaunch) {
      // await _appLocalDatasource.clearAllKey();
    }
    emit(state.copyWith(isFirstLaunch: isFirstLaunch));
  }

  FutureOr<void> _endOnBoard(
      AppEventEndOnboard event, Emitter<AppState> emit) async {
    await _appLocalDatasource.saveFirstLaunch();
    emit(state.copyWith(isFirstLaunch: false));
  }
}
