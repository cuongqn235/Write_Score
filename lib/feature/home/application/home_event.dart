part of 'home_bloc.dart';

sealed class HomeEvent {
  factory HomeEvent.onStart() = _OnStart;
  factory HomeEvent.onDeleteGame({
    required int gameId,
  }) = _OnDeleteGame;
}

class _OnStart implements HomeEvent {
  const _OnStart();
}

class _OnDeleteGame implements HomeEvent {
  const _OnDeleteGame({
    required this.gameId,
  });

  final int gameId;
}
