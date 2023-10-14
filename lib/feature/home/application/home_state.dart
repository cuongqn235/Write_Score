part of 'home_bloc.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState({
    @Default(Status.idle()) Status status,
    @Default(<AppGame>[]) List<AppGame> games,
  }) = _HomeState;
}
