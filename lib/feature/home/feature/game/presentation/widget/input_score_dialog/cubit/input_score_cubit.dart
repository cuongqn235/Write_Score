import 'package:write_score/feature/common/model/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_score_state.dart';
part 'input_score_cubit.freezed.dart';

class InputScoreCubit extends Cubit<InputScoreState> {
  InputScoreCubit({
    required InputScoreState init,
  }) : super(init);

  void onUpdate(int index, int score) {
    final scores = List<int>.from(state.scores);
    scores[index] = score;
    emit(
      state.copyWith(
        scores: scores,
      ),
    );
  }
}
