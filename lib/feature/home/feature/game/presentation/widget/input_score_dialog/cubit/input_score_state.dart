part of 'input_score_cubit.dart';

@freezed
class InputScoreState with _$InputScoreState {
  const factory InputScoreState({
    @Default(Status.idle()) Status status,
    required List<int> scores,
  }) = _InputScoreState;
}
