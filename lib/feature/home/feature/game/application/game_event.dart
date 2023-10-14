part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  factory GameEvent.onStart({
    required List<String> users,
  }) = _OnStart;
  factory GameEvent.onUpdateGame({
    required AppGame game,
  }) = _OnUpdateGame;
  factory GameEvent.onAddRound({
    required List<int> scores,
  }) = _OnAddRound;
}
