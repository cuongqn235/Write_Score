import 'package:write_score/data/local_datasource/game/game_entity.dart';
import 'package:write_score/data/local_datasource/player/player_entity.dart';
import 'package:write_score/data/local_datasource/round/round_entity.dart';
import 'package:write_score/data/local_datasource/score/score_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_game.freezed.dart';

@freezed
class AppGame with _$AppGame {
  factory AppGame({
    required int id,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(<String>[]) List<String> users,
    @Default(<AppRound>[]) List<AppRound> rounds,
  }) = _AppGame;

  factory AppGame.fromDto(
    GameEntity dto, {
    List<PlayerEntity>? players,
  }) {
    return AppGame(
      id: dto.id ?? -1,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      users: players?.map((e) => e.playerName).toList() ?? [],
    );
  }
}

@freezed
class AppRound with _$AppRound {
  const factory AppRound({
    required int round,
    @Default([]) List<int> scores,
  }) = _AppRound;

  factory AppRound.fromDto(
    RoundEntity round,
    List<ScoreEntity> scores,
  ) {
    return AppRound(
      round: round.round,
    );
  }
}
