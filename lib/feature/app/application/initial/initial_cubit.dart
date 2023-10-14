import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'initial_cubit.freezed.dart';
part 'initial_state.dart';

@injectable
class InitialCubit extends Cubit<InitialState> {
  InitialCubit() : super(const InitialState());
  void start() {
    emit(state.copyWith(isFinish: false));
  }

  void end() {
    emit(state.copyWith(isFinish: true));
  }
}
