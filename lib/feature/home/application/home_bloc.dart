import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:injectable/injectable.dart';
import 'package:write_score/core/application/repository/game/i_game_repository.dart';
import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:write_score/feature/common/application/base_bloc.dart';
import 'package:write_score/feature/common/model/status.dart';
import 'package:write_score/feature/common/application/base_state.dart';

part 'home_state.dart';
part 'home_event.dart';
// part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this.gameRepository) : super(const HomeState()) {
    on<_OnStart>(_onStart);
    on<_OnDeleteGame>(_onDeleteGame);
  }
  final IGameRepository gameRepository;
  FutureOr<void> _onStart(_OnStart event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(
        status: const Status.loading(),
      ));

      final res = await gameRepository.getAll();
      emit(state.copyWith(games: res));
    } on Exception catch (e) {
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      emit(state.copyWith(
        status: const Status.idle(),
      ));
    }
  }

  FutureOr<void> _onDeleteGame(
      _OnDeleteGame event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(
        status: const Status.loading(),
      ));
      await gameRepository.deleteGame(gameId: event.gameId);
      emit(
        state.copyWith(
          games: List<AppGame>.from(state.games)
            ..removeWhere(
              (element) => element.id == event.gameId,
            ),
        ),
      );
    } on Exception catch (e) {
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      emit(state.copyWith(
        status: const Status.idle(),
      ));
    }
  }
}
