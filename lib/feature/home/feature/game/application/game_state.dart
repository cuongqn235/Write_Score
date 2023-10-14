part of 'game_bloc.dart';

@freezed
class GameState extends BaseState with _$GameState {
  const factory GameState({
    @Default(Status.idle()) Status status,
    AppGame? game,
    @Default(1) int round,
  }) = _GameState;
}
