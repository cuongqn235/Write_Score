import 'dart:async';

import 'package:write_score/core/application/repository/game/i_game_repository.dart';
import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:write_score/feature/common/application/base_bloc.dart';
import 'package:write_score/feature/common/application/base_state.dart';
import 'package:write_score/feature/common/model/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_state.dart';
part 'game_event.dart';
part 'game_bloc.freezed.dart';

@injectable
class GameBloc extends BaseBloc<GameEvent, GameState> {
  GameBloc(this.gameRepository) : super(const GameState()) {
    on<_OnStart>(_onStart);
    on<_OnUpdateGame>(_onUpdateGame);
    on<_OnAddRound>(_onAddRound);
  }
  final IGameRepository gameRepository;
  FutureOr<void> _onStart(_OnStart event, Emitter<GameState> emit) async {
    try {
      emit(state.copyWith(
        status: const Status.loading(),
      ));
      final res = await gameRepository.createGame();
      final game = res.copyWith(users: event.users);
      emit(
        state.copyWith(
          game: game,
        ),
      );
      if (state.game == null) {
        throw Exception('Create failure game');
      }
      await gameRepository.addUsers(gameId: state.game!.id, users: event.users);
      emit(state.copyWith(
          game: state.game!.copyWith(
        users: event.users,
      )));
    } on Exception catch (e) {
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      // await Future.delayed(const Duration(seconds: 10));
      emit(state.copyWith(
        status: const Status.idle(),
      ));
    }
  }

  FutureOr<void> _onUpdateGame(
      _OnUpdateGame event, Emitter<GameState> emit) async {
    try {
      emit(state.copyWith(
        status: const Status.loading(),
      ));
      emit(
        state.copyWith(
          game: event.game,
        ),
      );
    } on Exception catch (e) {
      emit(state.copyWith(status: Status.failure(value: e)));
    } finally {
      // await Future.delayed(const Duration(seconds: 10));
      emit(state.copyWith(
        status: const Status.idle(),
      ));
    }
  }

  FutureOr<void> _onAddRound(_OnAddRound event, Emitter<GameState> emit) async {
    try {
      emit(state.copyWith(
        status: const Status.loading(),
      ));
      final res = await gameRepository.addRound(
        gameId: state.game!.id,
        roundCount: state.round,
        scores: event.scores,
      );
      emit(
        state.copyWith(
          game: state.game!.copyWith(
            rounds: List<AppRound>.from(state.game!.rounds)..add(res),
          ),
          round: state.round + 1,
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
