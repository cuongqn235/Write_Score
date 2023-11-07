part of 'home_bloc.dart';

class HomeState extends Equatable implements BaseState {
  const HomeState({
    this.status = const Status.idle(),
    this.games = const <AppGame>[],
  });
  @override
  final Status status;
  final List<AppGame> games;
  HomeState copyWith({
    Status? status,
    List<AppGame>? games,
  }) {
    return HomeState(
      status: status ?? this.status,
      games: games ?? this.games,
    );
  }

  @override
  List<Object?> get props => [games, status];
}
